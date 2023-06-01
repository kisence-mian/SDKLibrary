.class public interface abstract Lcom/ssjj/fnsdk/core/share/FNShareApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkShare(Ljava/lang/String;)Z
.end method

.method public abstract getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSurportList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;)V
.end method

.method public abstract isSurport(Ljava/lang/String;)Z
.end method

.method public abstract release(Landroid/app/Activity;)V
.end method

.method public abstract share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
.end method
