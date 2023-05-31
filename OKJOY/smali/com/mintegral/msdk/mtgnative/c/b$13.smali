.class final Lcom/mintegral/msdk/mtgnative/c/b$13;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/util/List;I)V
    .registers 5

    .prologue
    .line 2716
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->b:Ljava/util/List;

    iput p4, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->t(Lcom/mintegral/msdk/mtgnative/c/b;)Z

    .line 2720
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->b:Ljava/util/List;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->c:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V

    .line 2721
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$13;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/e/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2722
    return-void
.end method
