.class Lcom/bytedance/embedapplog/cm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/cm;->a()Lcom/bytedance/embedapplog/cn$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/cn$b<",
        "Lcom/bytedance/embedapplog/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embedapplog/cm;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/cm;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/bytedance/embedapplog/cm$1;->a:Lcom/bytedance/embedapplog/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/c;
    .registers 2

    .line 21
    invoke-static {p1}, Lcom/bytedance/embedapplog/c$a;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/bytedance/embedapplog/c;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/cm$1;->a(Lcom/bytedance/embedapplog/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/embedapplog/c;)Ljava/lang/String;
    .registers 2

    .line 26
    invoke-interface {p1}, Lcom/bytedance/embedapplog/c;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/cm$1;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/c;

    move-result-object p1

    return-object p1
.end method
