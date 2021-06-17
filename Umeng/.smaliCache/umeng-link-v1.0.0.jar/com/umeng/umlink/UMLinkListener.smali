.class public interface abstract Lcom/umeng/umlink/UMLinkListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onInstall(Ljava/util/HashMap;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLink(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
