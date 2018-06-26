# Add Categories to Articles

This Repo is all about implementing Categories feature to our project

Things you may want to know:

* There are three models in this project..

* i.e Article, Category and ArticleCategory

* Where Article and Category models are linked to ArticleCategory by ``` has_many :through ``` Association.

* ``` collection_check_boxes(object, method, collection, value_method, text_method) ``` in the form.

* Direct code (paste in your form, by changing the attributes) ``` <%= collection_check_boxes(:article, :category_ids, Category.all, :id, :name) %> ```

* Whitelist ``` :category_ids => [] ``` in the Controller's Strong parameters.
