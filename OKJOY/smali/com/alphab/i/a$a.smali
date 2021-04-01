.class final Lcom/alphab/i/a$a;
.super Landroid/database/ContentObserver;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/a;


# direct methods
.method public constructor <init>(Lcom/alphab/i/a;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 480
    iput-object p1, p0, Lcom/alphab/i/a$a;->a:Lcom/alphab/i/a;

    .line 481
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 482
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 487
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .registers 4

    .prologue
    .line 491
    if-nez p2, :cond_3

    .line 495
    :goto_2
    return-void

    .line 492
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 493
    iget-object v0, p0, Lcom/alphab/i/a$a;->a:Lcom/alphab/i/a;

    invoke-static {v0, p2}, Lcom/alphab/i/a;->a(Lcom/alphab/i/a;Landroid/net/Uri;)V

    goto :goto_2
.end method
