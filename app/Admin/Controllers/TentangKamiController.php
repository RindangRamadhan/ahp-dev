<?php

namespace App\Admin\Controllers;

use App\TentangKami;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;

class TentangKamiController extends Controller
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
            ->header('Tentang Kami')
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
            ->header('Tentang Kami')
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
            ->header('Tentang Kami')
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
            ->header('Tentang Kami')
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
        $grid = new Grid(new TentangKami);

        $grid->id('Id');
        
        if (Admin::user()->cannot('auth.management')) {
            $grid->disableCreateButton();
        }

        $grid->deskripsi('Deskripsi')->display(function ($deskripsi) {
            return $deskripsi;
        });

        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if (Admin::user()->cannot('auth.management')) {
                $actions->disableDelete();
            }
        });

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
        $show = new Show(TentangKami::findOrFail($id));

        $show->id('Id');
        $show->deskripsi('Deskripsi');
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
        $form = new Form(new TentangKami);

        $form->editor('deskripsi', 'Deskripsi')->rules('required', [
            'required' => 'Deskripsi tidak boleh kosong',
        ]);

        return $form;
    }
}
