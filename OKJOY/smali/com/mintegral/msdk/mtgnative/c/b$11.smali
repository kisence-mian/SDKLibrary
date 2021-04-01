.class final Lcom/mintegral/msdk/mtgnative/c/b$11;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgnative/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

.field final synthetic d:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 5

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->a:Ljava/util/List;

    iput p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->b:I

    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->c:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 2678
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 2679
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->b:I

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->c:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    invoke-static {v1, v0, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 2683
    :goto_1a
    return-void

    .line 2681
    :cond_1b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->d:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$11;->c:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    const-string v2, "has no ads"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    goto :goto_1a
.end method
