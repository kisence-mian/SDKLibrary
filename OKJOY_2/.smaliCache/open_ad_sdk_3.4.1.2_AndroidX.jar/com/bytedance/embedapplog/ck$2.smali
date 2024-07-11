.class Lcom/bytedance/embedapplog/ck$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/ck;->b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/cn$b<",
        "Lcom/bytedance/embedapplog/br;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/embedapplog/ck;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/ck;Landroid/content/Context;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/bytedance/embedapplog/ck$2;->b:Lcom/bytedance/embedapplog/ck;

    iput-object p2, p0, Lcom/bytedance/embedapplog/ck$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/br;
    .registers 2

    .line 76
    invoke-static {p1}, Lcom/bytedance/embedapplog/br$a;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/br;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 73
    check-cast p1, Lcom/bytedance/embedapplog/br;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/ck$2;->a(Lcom/bytedance/embedapplog/br;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/embedapplog/br;)Ljava/lang/String;
    .registers 5

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 82
    return-object v0

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/bytedance/embedapplog/ck$2;->b:Lcom/bytedance/embedapplog/ck;

    iget-object v2, p0, Lcom/bytedance/embedapplog/ck$2;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/ck;->a(Lcom/bytedance/embedapplog/ck;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 86
    iget-object v0, p0, Lcom/bytedance/embedapplog/ck$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OUID"

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/embedapplog/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_1f
    return-object v0
.end method

.method public synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/ck$2;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/br;

    move-result-object p1

    return-object p1
.end method
