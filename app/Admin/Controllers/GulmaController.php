<?php

namespace App\Admin\Controllers;

use App\Gulma;
use App\Product;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class GulmaController extends Controller
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
            ->header('Implementasi Produk')
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
            ->header('Implementasi Produk')
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
            ->header('Implementasi Produk')
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
            ->header('Implementasi Produk')
            ->description('Create')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    private function displayImage($path) {
        
        $src = Storage::disk(config('admin.upload.disk'))->url($path);
        return "<img src='$src' style='max-width:100px;max-height:100px' class='img img-thumbnail' />";
    }
    protected function grid()
    {
        $app = $this;
        $grid = new Grid(new Gulma);

        $grid->id('Id');
        $grid->produk_id('Produk')->display(function($produk_id){
            return Product::find($produk_id)->product_name;
        });
        // $grid->pictures('Foto');
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
        $show = new Show(Gulma::findOrFail($id));

        $show->id('Id');
        $show->produk_id('Produk')->as(function ($produk_id) {
            return Product::find($produk_id)->product_name;
        });
        $show->pictures('Foto')->as(function ($pictures) {
            $html = '';
            foreach ($pictures as $picture)
                $html .="<img src='/storage/$picture' style='max-height: 160px; margin-right: 10px;' >";
            return $html;
        })->unescape();
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
        $form = new Form(new Gulma);

        $form->select('produk_id', 'Produk')->options(
            Product::all()->pluck('product_name', 'id')
        )->rules('required', [
            'required' => 'Produk Aktif tidak boleh kosong',
        ]);
        $form->multipleImage('pictures', 'Foto')->removable();
        
        return $form;
    }
}
