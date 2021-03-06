#import "CGRectHelpers.h"


CGRect CGRectMakeWithCenter( CGPoint center, CGSize size )
{
	CGPoint upperLeft = CGPointMake( center.x - (size.width / 2.0), center.y - (size.height / 2.0) );
	return CGRectMake( upperLeft.x, upperLeft.y, size.width, size.height );
}

CGRect CGRectMakeWithOrigin( CGPoint origin, CGSize size )
{
	return CGRectMake( origin.x, origin.y, size.width, size.height );
}

CGFloat	CGRectMaxX( CGRect rect )
{
	return rect.origin.x + rect.size.width;
}

CGFloat CGRectMaxY( CGRect rect )
{
	return rect.origin.y + rect.size.height;
}

CGRect	CGRectMakeIntegral( CGRect rect )
{
	return CGRectMake( floor(rect.origin.x), floor(rect.origin.y), floor(rect.size.width), floor(rect.size.height) );
}

CGRect	CGRectMakeCenteredRect( CGRect superviewRect, CGSize subviewSize )
{
	return  CGRectIntegral( CGRectMake( (superviewRect.size.width - subviewSize.width) / 2.0, 
										(superviewRect.size.height - subviewSize.height) / 2.0, 
									   subviewSize.width, subviewSize.height) );
}

CGRect  CGRectMakeWithEdgeInsets( CGRect rect, UIEdgeInsets insets )
{
	return CGRectIntegral( CGRectMake( rect.origin.x+insets.left, 
									   rect.origin.y+insets.top,
									   rect.size.width - (insets.left+insets.right),
									  rect.size.height - (insets.top+insets.bottom)) );
}

BOOL CGRectIsInvalid( CGRect r )
{
	return isnan(r.origin.x) || isnan(r.origin.y) || isnan(r.size.width) || isnan(r.size.height);
}




