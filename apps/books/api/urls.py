from django.urls import path
from .views import BookListCreateView 

urlpatterns = [
    path('', BookListCreateView.as_view(), name='books_list'),
    #path('books/<int:pk>/', BookDetailView.as_view(), name='book-detail'),
]
