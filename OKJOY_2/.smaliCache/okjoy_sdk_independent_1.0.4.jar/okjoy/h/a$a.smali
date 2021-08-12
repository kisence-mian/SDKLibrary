.class public Lokjoy/h/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/h/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lokjoy/h/a;


# direct methods
.method public constructor <init>(Lokjoy/h/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lokjoy/h/a$a;->b:Lokjoy/h/a;

    iput-object p2, p0, Lokjoy/h/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lokjoy/h/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lokjoy/h/a$a;->b:Lokjoy/h/a;

    iget-object v0, v0, Lokjoy/h/a;->d:Lokjoy/h/b;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lokjoy/h/a$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lokjoy/h/b;->onSuccess(Ljava/lang/String;)V

    goto :goto_22

    :cond_14
    iget-object v0, p0, Lokjoy/h/a$a;->b:Lokjoy/h/a;

    iget-object v0, v0, Lokjoy/h/a;->d:Lokjoy/h/b;

    if-eqz v0, :cond_22

    const v1, 0x186a2

    const-string v2, "\u54cd\u5e94\u6570\u636e\u8f6c\u6362\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lokjoy/h/b;->a(ILjava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method
