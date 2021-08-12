.class public Lokjoy/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/a/j$a;,
        Lokjoy/a/j$b;
    }
.end annotation


# instance fields
.field public a:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lokjoy/a/j;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lokjoy/a/j;->a:Landroid/os/CountDownTimer;

    :cond_a
    return-void
.end method
