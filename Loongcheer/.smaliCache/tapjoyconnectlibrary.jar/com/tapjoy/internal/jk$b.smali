.class public final Lcom/tapjoy/internal/jk$b;
.super Lcom/tapjoy/internal/jk$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1993
    invoke-direct {p0}, Lcom/tapjoy/internal/jk$d;-><init>()V

    .line 1994
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$b;
    .registers 2

    .line 2005
    invoke-static {p1}, Lcom/tapjoy/internal/jk$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/jk$b;->b:Ljava/lang/CharSequence;

    .line 2006
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/jj;)V
    .registers 4

    .line 2033
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    .line 2034
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2035
    invoke-interface {p1}, Lcom/tapjoy/internal/jj;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lcom/tapjoy/internal/jk$b;->b:Ljava/lang/CharSequence;

    .line 2036
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/jk$b;->e:Ljava/lang/CharSequence;

    .line 2037
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2038
    iget-boolean v0, p0, Lcom/tapjoy/internal/jk$b;->d:Z

    if-eqz v0, :cond_24

    .line 2039
    iget-object v0, p0, Lcom/tapjoy/internal/jk$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2042
    :cond_24
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/jk$b;
    .registers 2

    .line 2023
    invoke-static {p1}, Lcom/tapjoy/internal/jk$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/jk$b;->e:Ljava/lang/CharSequence;

    .line 2024
    return-object p0
.end method
