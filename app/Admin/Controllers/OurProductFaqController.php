<?php

namespace App\Admin\Controllers;

use App\OurProductFaq;
use App\OurProduct;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class OurProductFaqController extends Controller
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

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new OurProductFaq);

        $grid->id('Id');
        $grid->produk_id('Produk')->display(function($produk_id) {
            return OurProduct::find($produk_id)->product_name;
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
        $show = new Show(OurProductFaq::findOrFail($id));

        $show->id('Id');
        $show->produk_id('Produk id');
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
        $form = new Form(new OurProductFaq);

        $form->select('produk_id', 'Produk')->options(
            OurProduct::all()->pluck('product_name', 'id')
        )->rules('required', [
            'required' => 'Produk Aktif tidak boleh kosong',
        ]);
        $form->text('pertanyaan', 'Pertanyaan')->rules('required', [
            'required' => 'Pertanyaan tidak boleh kosong',
        ]);
        $form->textarea('penjelasan', 'Penjelasan')->rules('required', [
            'required' => 'Penjelasan tidak boleh kosong',
        ]);

        return $form;
    }
}
