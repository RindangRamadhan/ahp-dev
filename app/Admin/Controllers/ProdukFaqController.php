<?php

namespace App\Admin\Controllers;

use App\Product;
use App\ProdukFaq;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProdukFaqController extends Controller
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
            ->header('Product FAQ')
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
            ->header('Product FAQ')
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
            ->header('Product FAQ')
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
            ->header('Product FAQ')
            ->description('Create')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ProdukFaq);

        $grid->id('Id');
        $grid->produk_id('Produk')->display(function($produk_id) {
            return Product::find($produk_id)->product_name;
        });
        $grid->pertanyaan('Pertanyaan');
        $grid->penjelasan('Penjelasan');
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
        $show = new Show(ProdukFaq::findOrFail($id));

        $show->id('Id');
        $show->produk_id('Produk');
        $show->pertanyaan('Pertanyaan');
        $show->penjelasan('Penjelasan');
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
        $form = new Form(new ProdukFaq);

        $form->select('produk_id', 'Produk')->options(
            Product::all()->pluck('product_name', 'id')
        );
        $form->text('pertanyaan', 'Pertanyaan');
        $form->textarea('penjelasan', 'Penjelasan');

        return $form;
    }
}
