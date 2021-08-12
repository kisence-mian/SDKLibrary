.class public Lokjoy/q/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/q/c$c;,
        Lokjoy/q/c$d;
    }
.end annotation


# instance fields
.field public a:Landroid/os/CountDownTimer;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILokjoy/q/c$c;)V
    .registers 11

    iget-object v0, p0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    if-nez v0, :cond_17

    new-instance v0, Lokjoy/q/c$a;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lokjoy/q/c$a;-><init>(Lokjoy/q/c;JJLokjoy/q/c$c;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    :cond_17
    return-void
.end method

.method public a(Lokjoy/q/c$c;)V
    .registers 10

    iget v0, p0, Lokjoy/q/c;->b:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    :cond_c
    new-instance v0, Lokjoy/q/c$b;

    iget v1, p0, Lokjoy/q/c;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lokjoy/q/c$b;-><init>(Lokjoy/q/c;JJLokjoy/q/c$c;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lokjoy/q/c;->a:Landroid/os/CountDownTimer;

    return-void
.end method
