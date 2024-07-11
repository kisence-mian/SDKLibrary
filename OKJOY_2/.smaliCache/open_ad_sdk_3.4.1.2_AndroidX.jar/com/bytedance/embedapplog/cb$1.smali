.class Lcom/bytedance/embedapplog/cb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/cb;->a()Lcom/bytedance/embedapplog/cn$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/cn$b<",
        "Lcom/bytedance/embedapplog/d;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embedapplog/cb;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/cb;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bytedance/embedapplog/cb$1;->a:Lcom/bytedance/embedapplog/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/d;
    .registers 2

    .line 20
    invoke-static {p1}, Lcom/bytedance/embedapplog/d$a;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 17
    check-cast p1, Lcom/bytedance/embedapplog/d;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/cb$1;->a(Lcom/bytedance/embedapplog/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/embedapplog/d;)Ljava/lang/String;
    .registers 2

    .line 25
    if-nez p1, :cond_4

    .line 26
    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_4
    invoke-interface {p1}, Lcom/bytedance/embedapplog/d;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/cb$1;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/d;

    move-result-object p1

    return-object p1
.end method
