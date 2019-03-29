<?php

namespace App\Admin\Controllers;

use App\ContactSupport;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;

class ContactSupportController extends Controller
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
            ->header('Support')
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
            ->header('Support')
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
            ->header('Support')
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
            ->header('Support')
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
        $grid = new Grid(new ContactSupport);

        $grid->id('Id');
        $grid->filter(function($filter){        
            // Add a column filter
            $filter->like('nama', 'Nama Lengkap');            
        });
        $grid->nama('Nama Lengkap');
        $grid->no_telp('No telp');
        $grid->whatsapp('Whatsapp');
        $grid->email('Email');
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
        $show = new Show(ContactSupport::findOrFail($id));

        $show->id('Id');
        $show->nama('Nama');
        $show->no_telp('No telp');
        $show->whatsapp('Whatsapp');
        $show->email('Email');
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
        $form = new Form(new ContactSupport);

        $form->text('nama', 'Nama')->rules('required', [
            'required' => 'Nama tidak boleh kosong',
        ]);
        $form->text('no_telp', 'No telp')->rules('required|min:10', [
            'min' => 'No Telp minimal 10 karakter',
            'required' => 'No telp tidak boleh kosong',
        ]);
        $form->text('whatsapp', 'Whatsapp')->rules('required', [
            'required' => 'Whatsapp tidak boleh kosong',
        ]);
        $form->email('email', 'Email')->rules(function($form) {
            if (!$id = $form->model()->id) {
                return 'required|unique:product_categories,category_name';
                # code...
            }else {
                return 'required|unique:product_categories,category_name,'.$id;
                # code...
            }
        });

        return $form;
    }
}
