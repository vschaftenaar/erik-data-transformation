# function for the application
getMenu <- function(name,item){
  
  menu      <- navbarMenu(name)
  menu$tabs <- lapply(item,function(x)tabPanel(x,uiOutput(paste0(name,'.',x))))
  
  return(menu)
}


getLorem <- function(short=F){
  
  if(short==T){
    lorem <- p(style="text-align: justify;",
               'Lorem ipsum dolor sit amet. Cum accusantium dolorum aut inventore accusantium est assumenda reprehenderit qui 
         nobis enim et fugit recusandae qui voluptas omnis? Id animi repellendus est fugit totam ab assumenda voluptatem 
         et dolores tempora et provident ipsam. Et illo natus ut ratione culpa et nostrum voluptas aut minima voluptatem
         eum dolore eius? Nam natus animi et nihil laudantium et optio impedit. Et amet perferendis et quidem error et voluptate autem qui 
         sint voluptas id quibusdam sint. Non aspernatur aspernatur eum tempore consequatur et corporis laboriosam est 
         delectus voluptatem ad dignissimos consequuntur et assumenda placeat. Non minima necessitatibus eum vitae commodi
         et veniam rerum et corrupti veniam? Lorem ipsum dolor sit amet. Cum accusantium dolorum aut inventore accusantium.')
  }else{
    lorem <- p(style="text-align: justify;",
               'Lorem ipsum dolor sit amet. Cum accusantium dolorum aut inventore accusantium est assumenda reprehenderit qui 
         nobis enim et fugit recusandae qui voluptas omnis? Id animi repellendus est fugit totam ab assumenda voluptatem 
         et dolores tempora et provident ipsam. Et illo natus ut ratione culpa et nostrum voluptas aut minima voluptatem
         eum dolore eius? Nam natus animi et nihil laudantium et optio impedit. Et amet perferendis et quidem error et voluptate autem qui 
         sint voluptas id quibusdam sint. Non aspernatur aspernatur eum tempore consequatur et corporis laboriosam est 
         delectus voluptatem ad dignissimos consequuntur et assumenda placeat. Non minima necessitatibus eum vitae commodi
         et veniam rerum et corrupti veniam? Lorem ipsum dolor sit amet. Cum accusantium dolorum aut inventore accusantium est assumenda reprehenderit qui 
         nobis enim et fugit recusandae qui voluptas omnis? Id animi repellendus est fugit totam ab assumenda voluptatem 
         et dolores tempora et provident ipsam. Et illo natus ut ratione culpa et nostrum voluptas aut minima voluptatem
         eum dolore eius? Nam natus animi et nihil laudantium et optio impedit. Et amet perferendis et quidem error et voluptate autem qui 
         sint voluptas id quibusdam sint. Non aspernatur aspernatur eum tempore consequatur et corporis laboriosam est 
         delectus voluptatem ad dignissimos consequuntur et assumenda placeat. Non minima necessitatibus eum vitae commodi
         et veniam rerum et corrupti veniam?Lorem ipsum dolor sit amet. Cum accusantium dolorum aut inventore accusantium est assumenda reprehenderit qui 
         nobis enim et fugit recusandae qui voluptas omnis? Id animi repellendus est fugit totam ab assumenda voluptatem 
         et dolores tempora et provident ipsam. Et illo natus ut ratione culpa et nostrum voluptas aut minima voluptatem
         eum dolore eius? Nam natus animi et nihil laudantium et optio impedit. Et amet perferendis et quidem error et voluptate autem qui 
         sint voluptas id quibusdam sint. Non aspernatur aspernatur eum tempore consequatur et corporis laboriosam est 
         delectus voluptatem ad dignissimos consequuntur et assumenda placeat. Non minima necessitatibus eum vitae commodi
         et veniam rerum et corrupti veniam')
  }
  return(lorem)
}