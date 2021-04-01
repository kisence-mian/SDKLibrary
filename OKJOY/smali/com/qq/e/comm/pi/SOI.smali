.class public interface abstract Lcom/qq/e/comm/pi/SOI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/pi/SOI$AdProductType;
    }
.end annotation


# static fields
.field public static final ONESHOT_COST_ANIMATION_CANCEL:I = 0x36e1

.field public static final ONESHOT_COST_ANIMATION_END:I = 0x36eb

.field public static final ONESHOT_COST_ANIMATION_START:I = 0x36d7


# virtual methods
.method public abstract clickJoinAd(Landroid/view/View;)V
.end method

.method public abstract exposureJoinAd(Landroid/view/View;J)V
.end method

.method public abstract getJoinAdImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract getOneshotCoverImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract getOneshotCoverImagePath()Ljava/lang/String;
.end method

.method public abstract getSplashProductType()Lcom/qq/e/comm/pi/SOI$AdProductType;
.end method

.method public abstract isJoinAd()Z
.end method

.method public abstract reportJoinAdCost(I)V
.end method
