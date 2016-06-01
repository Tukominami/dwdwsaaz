//
//  VedioView.m
//  KaeCustomView
//
//  Created by       苑 on 16/4/27.
//  Copyright © 2016年 kae. All rights reserved.
//

#import "VedioView.h"

@implementation VedioView
- (id)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if (self) {
        self.backgroundColor =[UIColor whiteColor];
        [self setUpVedioView];
    }
    return self;
}
- (void)setUpVedioView{
    UIImageView *vedioImage =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bfde330812822448dab9b46c4f9f8c24.jpeg"]];
   // vedioImage.center =CGPointMake(self.center.x, self.center.y-10);
   // vedioImage.bounds =CGRectMake(0, 0, 150, 60);
    vedioImage.frame =CGRectMake(5,5, 140, 50);
    vedioImage.clipsToBounds =YES;
    vedioImage.layer.cornerRadius =5;
    [self addSubview:vedioImage];
    UILabel *nameLabel =[[UILabel alloc]initWithFrame:CGRectMake(vedioImage.frame.origin.x+5, vedioImage.frame.size.height-15, 70, 15)];
    nameLabel.font =[UIFont systemFontOfSize:11];
    nameLabel.textColor =[UIColor whiteColor];
    nameLabel.text =@"white55开解说";
    [vedioImage addSubview:nameLabel];
    UILabel *audinceLabel =[[UILabel alloc]initWithFrame:CGRectMake(nameLabel.frame.size.width+15, vedioImage.frame.size.height-15, 70, 15)];
    audinceLabel.font =[UIFont systemFontOfSize:11];
    audinceLabel.textColor =[UIColor whiteColor];
    audinceLabel.text =@"261.8万";
    [vedioImage addSubview:audinceLabel];
    UILabel *titleLabel =[[UILabel alloc]initWithFrame:CGRectMake(vedioImage.frame.origin.x, self.frame.size.height-20, vedioImage.frame.size.width, 14)];
    titleLabel.font =[UIFont systemFontOfSize:13];
    titleLabel.textColor =[UIColor grayColor];
    titleLabel.text =@"White55开 吴彦祖附体神勇异常";
    [self addSubview:titleLabel];

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
