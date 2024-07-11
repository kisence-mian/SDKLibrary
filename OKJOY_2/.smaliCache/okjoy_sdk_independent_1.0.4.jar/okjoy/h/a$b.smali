.class public Lokjoy/h/a$b;
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
.field public final synthetic a:I

.field public final synthetic b:Lokjoy/h/a;


# direct methods
.method public constructor <init>(Lokjoy/h/a;I)V
    .registers 3

    iput-object p1, p0, Lokjoy/h/a$b;->b:Lokjoy/h/a;

    iput p2, p0, Lokjoy/h/a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lokjoy/h/a$b;->b:Lokjoy/h/a;

    iget-object v0, v0, Lokjoy/h/a;->d:Lokjoy/h/b;

    if-eqz v0, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u53e3\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokjoy/h/a$b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a0

    invoke-interface {v0, v2, v1}, Lokjoy/h/b;->a(ILjava/lang/String;)V

    :cond_21
    return-void
.end method
