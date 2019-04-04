<?php

namespace App\Admin\Controllers;

use App\OurProduct;
use App\OurProductGroup;
use App\OurProductCategory;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class OurProductController extends Controller
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
            ->header('Our Product')
            ->description('List')
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
            ->header('Our Product')
            ->description('Detail')
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
            ->header('Our Product')
            ->description('Edit')
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
            ->header('Our Product')
            ->description('Create')
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
    {
        $grid = new Grid(new OurProduct);
        $app = $this;
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
        // $grid->product_use('Tujuan Penggunaan')->limit(100)->display(function ($product_use) {
        //     return $product_use;
        // });
        // $grid->manfaat('Manfaat Penggunaan')->limit(100)->display(function ($manfaat) {
        //     return $manfaat;
        // });
        // $grid->product_dose('Petunjuk Penggunaan')->limit(100)->display(function ($product_use) {
        //     return $product_use;
        // });
        // $grid->product_package('Isi Kemasan')->limit(100)->display(function ($product_use) {
        //     return $product_use;
        // });
        $grid->kategori_id('Kategori Produk')->display(function($kategori_id){
            return OurProductCategory::find($kategori_id)->category_name;
        });
        $grid->kelompok_id('Kelompok Produk')->display(function($kelompok_id){
            return OurProductGroup::find($kelompok_id)->group_name;
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
        $show = new Show(OurProduct::findOrFail($id));

        $show->id('Id');
        $show->product_name('Product name');
        $show->product_ingredients('Product ingredients');
        $show->product_formulation('Product formulation');
        $show->product_use('Product use');
        $show->product_dose('Product dose');
        $show->product_package('Product package');
        $show->kategori_id('Kategori id');
        $show->kelompok_id('Kelompok id');
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
        $form = new Form(new OurProduct);

        $form->text('product_name', 'Nama Dagang')->rules(function($form) {
            if (!$id = $form->model()->id) {
                return 'required|unique:our_products,product_name';
                # code...
            }else {
                return 'required|unique:our_products,product_name,'.$id;
                # code...
            }
        });
        $form->text('product_ingredients', 'Bahan Aktif')->rules('required', [
            'required' => 'Bahan Aktif tidak boleh kosong',
        ]);
        $form->text('product_formulation', 'Bentuk Formulasi')->rules('required', [
            'required' => 'Bentuk Formulasi tidak boleh kosong',
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
        $form->select('kategori_id', 'Kategori Produk')->options(
            OurProductCategory::all()->pluck('category_name', 'id')
        )->rules('required', [
            'required' => 'Kategori Produk tidak boleh kosong',
        ]);
        $form->select('kelompok_id', 'Kelompok Produk')->options(
            OurProductGroup::all()->pluck('group_name', 'id')
        )->rules('required', [
            'required' => 'Kelompok Produk tidak boleh kosong',
        ]);
        $form->image('gambar', 'Gambar')->rules('required', [
            'required' => 'Gambar tidak boleh kosong',
        ]);
        $form->text('sifat_formulasi', 'Sifat Formulasi')->rules('required', [
            'required' => 'Sifat Formulasi tidak boleh kosong',
        ]);
        // $form->text('manfaat', 'Manfaat Penggunaan')->rules('required', [
        //     'required' => 'Manfaat Penggunaan tidak boleh kosong',
        // ]);

        return $form;
    }
}
