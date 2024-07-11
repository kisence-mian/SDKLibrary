.class public abstract Lcom/tapjoy/internal/jk$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field protected a:Lcom/tapjoy/internal/jk$c;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/jk$d;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tapjoy/internal/jj;)V
    .registers 2

    .line 1611
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/jk$c;)V
    .registers 3

    .line 1589
    iget-object v0, p0, Lcom/tapjoy/internal/jk$d;->a:Lcom/tapjoy/internal/jk$c;

    if-eq v0, p1, :cond_b

    .line 1590
    iput-object p1, p0, Lcom/tapjoy/internal/jk$d;->a:Lcom/tapjoy/internal/jk$c;

    .line 1591
    if-eqz p1, :cond_b

    .line 1592
    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/jk$c;->a(Lcom/tapjoy/internal/jk$d;)Lcom/tapjoy/internal/jk$c;

    .line 1595
    :cond_b
    return-void
.end method
