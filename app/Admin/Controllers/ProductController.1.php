<?php

namespace App\Admin\Controllers;

use App\Product;
use App\ProductGroup;
use App\ProductCategory;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *  
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }
    private function displayImage($path) {
        
        $src = Storage::disk(config('admin.upload.disk'))->url($path);
        return "<img src='$src' style='max-width:100px;max-height:100px' class='img img-thumbnail' />";
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {   $app = $this;
        $grid = new Grid(new Product);

        $grid->id('Id');
        $grid->filter(function($filter){
        
            // Add a column filter
            $filter->like('product_name', 'Nama Dagang');
            $filter->like('product_ingredients', 'Bahan Aktif');
            $filter->like('product_formulation', 'Bentuk Formulasi');
            $filter->like('sifat_formulasi', 'Sifat Formulasi');
        });
        $grid->product_name('Nama Dagang');
        $grid->product_ingredients('Bahan Aktif');
        $grid->product_formulation('Bentuk Formulasi');
        $grid->sifat_formulasi('Sifat Formulasi');
        $grid->product_use('Tujuan Penggunaan')->limit(100)->display(function ($product_use) {
            return $product_use;
        });
        $grid->manfaat('Manfaat Penggunaan')->limit(100)->display(function ($manfaat) {
            return $manfaat;
        });
        $grid->product_dose('Petunjuk Penggunaan')->limit(30)->display(function ($product_dose) {
            return $product_dose;
        });
        $grid->product_package('Isi Kemasan')->limit(30)->display(function ($product_package) {
            return $product_package;
        });
        $grid->kategori_id('Kategori')->display(function($kategori_id) {
            return ProductCategory::find($kategori_id)->category_name;
        });
        $grid->kelompok_id('Kelompok')->display(function($kelompok_id) {
            return ProductGroup::find($kelompok_id)->group_name;
        });
        $grid->gambar('Gambar')->display(function($gambar) use ($app) {
            return $app->displayImage($gambar);
        });
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->id('Id');
        $show->product_name('Nama Dagang');
        $show->product_ingredients('Bahan Aktif');
        $show->product_formulation('Bentuk Formulasi');
        $show->sifat_formulasi('Sifat Formulasi');
        $show->product_use('Tujuan Penggunaan');
        $show->manfaat('Manfaat Penggunaan');
        $show->product_dose('Petunjuk Penggunaan');
        $show->product_package('Isi Kemasan');
        $show->kategori_id('Kategori');
        $show->kelompok_id('Kelompok');
        $show->gambar('Gambar');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product);

        $form->text('product_name', 'Nama Dagang')->rules(function($form) {
            if (!$id = $form->model()->id) {
                return 'required|unique:product_categories,category_name';
                # code...
            }else {
                return 'required|unique:product_categories,category_name,'.$id;
                # code...
            }
        });
        $form->text('product_ingredients', 'Bahan Aktif')->rules('required', [
            'required' => 'Bahan Aktif tidak boleh kosong',
        ]);
        $form->text('product_formulation', 'Bentuk Formulasi')->rules('required', [
            'required' => 'Bentuk Formulasi tidak boleh kosong',
        ]);
        $form->text('sifat_formulasi', 'Sifat Formulasi')->rules('required', [
            'required' => 'Sifat Formulasi tidak boleh kosong',
        ]);
        $form->editor('product_use', 'Tujuan Penggunaan')->rules('required', [
            'required' => 'Tujuan Penggunaan tidak boleh kosong',
        ]);
        $form->editor('manfaat', 'Manfaat Penggunaan')->rules('required', [
            'required' => 'Manfaat Penggunaan tidak boleh kosong',
        ]);
        $form->editor('product_dose', 'Petunjuk Penggunaan')->rules('required', [
            'required' => 'Petunjuk Penggunaan tidak boleh kosong',
        ]);
        $form->editor('product_package', 'Isi Kemasan')->rules('required', [
            'required' => 'Isi Kemasan tidak boleh kosong',
        ]);
        $form->select('kategori_id', 'Kategori')->options(
            ProductCategory::all()->pluck('category_name', 'id')
        )->rules('required', [
            'required' => 'Kategori tidak boleh kosong',
        ]);
        $form->select('kelompok_id', 'Kelompok')->options(
            ProductGroup::all()->pluck('group_name', 'id')
        )->rules('required', [
            'required' => 'Kelompok tidak boleh kosong',
        ]);
        $form->image('gambar', 'Gambar')->rules('required', [
            'required' => 'Gambar tidak boleh kosong',
        ]);

        return $form;
    }
}
