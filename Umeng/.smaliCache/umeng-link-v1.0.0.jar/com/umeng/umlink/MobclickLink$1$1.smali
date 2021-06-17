.class final Lcom/umeng/umlink/MobclickLink$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/umlink/MobclickLink$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/umlink/MobclickLink$1;


# direct methods
.method constructor <init>(Lcom/umeng/umlink/MobclickLink$1;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/umlink/MobclickLink$1$1;->a:Lcom/umeng/umlink/MobclickLink$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/umlink/MobclickLink$1$1;->a:Lcom/umeng/umlink/MobclickLink$1;

    iget-object v0, v0, Lcom/umeng/umlink/MobclickLink$1;->b:Lcom/umeng/umlink/UMLinkListener;

    const-string v1, "param error: appkey not set"

    invoke-interface {v0, v1}, Lcom/umeng/umlink/UMLinkListener;->onError(Ljava/lang/String;)V

    return-void
.end method
