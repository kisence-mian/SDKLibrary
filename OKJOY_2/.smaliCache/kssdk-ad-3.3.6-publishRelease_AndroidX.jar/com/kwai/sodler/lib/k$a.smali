.class public abstract Lcom/kwai/sodler/lib/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/sodler/lib/k$a$a;,
        Lcom/kwai/sodler/lib/k$a$b;,
        Lcom/kwai/sodler/lib/k$a$c;
    }
.end annotation


# instance fields
.field final a:Lcom/kwai/sodler/lib/a/e;


# direct methods
.method public constructor <init>(Lcom/kwai/sodler/lib/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/sodler/lib/k$a;->a:Lcom/kwai/sodler/lib/a/e;

    return-void
.end method

.method public static a(Lcom/kwai/sodler/lib/a/e;I)Lcom/kwai/sodler/lib/k$a;
    .registers 2

    sparse-switch p1, :sswitch_data_16

    new-instance p1, Lcom/kwai/sodler/lib/k$a$b;

    invoke-direct {p1, p0}, Lcom/kwai/sodler/lib/k$a$b;-><init>(Lcom/kwai/sodler/lib/a/e;)V

    goto :goto_14

    :sswitch_9
    new-instance p1, Lcom/kwai/sodler/lib/k$a$a;

    invoke-direct {p1, p0}, Lcom/kwai/sodler/lib/k$a$a;-><init>(Lcom/kwai/sodler/lib/a/e;)V

    goto :goto_14

    :sswitch_f
    new-instance p1, Lcom/kwai/sodler/lib/k$a$c;

    invoke-direct {p1, p0}, Lcom/kwai/sodler/lib/k$a$c;-><init>(Lcom/kwai/sodler/lib/a/e;)V

    :goto_14
    return-object p1

    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_f
        0x100 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public abstract a(Lcom/kwai/sodler/lib/a/f;)V
.end method
