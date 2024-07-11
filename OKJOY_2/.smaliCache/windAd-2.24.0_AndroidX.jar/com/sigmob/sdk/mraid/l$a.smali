.class public Lcom/sigmob/sdk/mraid/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/sdk/base/common/p;

.field private final c:Lcom/sigmob/sdk/mraid/c;


# virtual methods
.method public a()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public b()Lcom/sigmob/sdk/base/common/p;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l$a;->b:Lcom/sigmob/sdk/base/common/p;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/mraid/c;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l$a;->c:Lcom/sigmob/sdk/mraid/c;

    return-object v0
.end method
