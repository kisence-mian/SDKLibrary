.class Lcom/tencent/smtt/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/utils/e;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/utils/e;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/utils/h;->a:Lcom/tencent/smtt/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/h;->a:Lcom/tencent/smtt/utils/e;

    iget-object v0, v0, Lcom/tencent/smtt/utils/e;->b:Landroid/content/Context;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
