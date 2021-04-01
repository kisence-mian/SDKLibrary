.class public Lcom/sigmob/sdk/mraid/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/sdk/base/views/BaseWebView;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sigmob/sdk/base/common/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/sigmob/sdk/base/common/w;

.field private final d:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/BaseWebView;Lcom/sigmob/sdk/base/common/x;Lcom/sigmob/sdk/base/common/w;Lcom/sigmob/sdk/mraid/h;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/ad;->a:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/ad;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/ad;->c:Lcom/sigmob/sdk/base/common/w;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/ad;->d:Lcom/sigmob/sdk/mraid/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/views/BaseWebView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/ad;->a:Lcom/sigmob/sdk/base/views/BaseWebView;

    return-object v0
.end method

.method public b()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sigmob/sdk/base/common/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/ad;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/base/common/w;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/ad;->c:Lcom/sigmob/sdk/base/common/w;

    return-object v0
.end method

.method public d()Lcom/sigmob/sdk/mraid/h;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/ad;->d:Lcom/sigmob/sdk/mraid/h;

    return-object v0
.end method
