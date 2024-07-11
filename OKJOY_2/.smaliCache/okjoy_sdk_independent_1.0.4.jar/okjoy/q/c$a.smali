.class public Lokjoy/q/c$a;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/q/c;->a(ILokjoy/q/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/q/c$c;

.field public final synthetic b:Lokjoy/q/c;


# direct methods
.method public constructor <init>(Lokjoy/q/c;JJLokjoy/q/c$c;)V
    .registers 7

    iput-object p1, p0, Lokjoy/q/c$a;->b:Lokjoy/q/c;

    iput-object p6, p0, Lokjoy/q/c$a;->a:Lokjoy/q/c$c;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lokjoy/q/c$a;->a:Lokjoy/q/c$c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lokjoy/q/c$c;->a()V

    :cond_7
    iget-object v0, p0, Lokjoy/q/c$a;->b:Lokjoy/q/c;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .registers 4

    iget-object v0, p0, Lokjoy/q/c$a;->b:Lokjoy/q/c;

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    .line 1
    iput p1, v0, Lokjoy/q/c;->b:I

    .line 2
    iget-object p2, p0, Lokjoy/q/c$a;->a:Lokjoy/q/c$c;

    if-eqz p2, :cond_e

    invoke-interface {p2, p1}, Lokjoy/q/c$c;->a(I)V

    :cond_e
    return-void
.end method
