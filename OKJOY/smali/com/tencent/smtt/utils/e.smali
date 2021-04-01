.class Lcom/tencent/smtt/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/d$a;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/RelativeLayout;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/tencent/smtt/utils/d;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/utils/d;Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 7

    iput-object p1, p0, Lcom/tencent/smtt/utils/e;->f:Lcom/tencent/smtt/utils/d;

    iput-object p2, p0, Lcom/tencent/smtt/utils/e;->a:Lcom/tencent/smtt/sdk/WebView;

    iput-object p3, p0, Lcom/tencent/smtt/utils/e;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/smtt/utils/e;->c:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/tencent/smtt/utils/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/smtt/utils/e;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/smtt/utils/f;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/f;-><init>(Lcom/tencent/smtt/utils/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/smtt/utils/g;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/utils/g;-><init>(Lcom/tencent/smtt/utils/e;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/smtt/utils/h;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/h;-><init>(Lcom/tencent/smtt/utils/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
