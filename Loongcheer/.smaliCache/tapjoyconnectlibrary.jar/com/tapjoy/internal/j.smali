.class public final Lcom/tapjoy/internal/j;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/l<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/l;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    iput p3, p0, Lcom/tapjoy/internal/j;->c:I

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/j;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/Integer;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/tapjoy/internal/j;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/j;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 2

    .line 25
    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/j;->a(I)V

    return-void

    .line 28
    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/j;->c()V

    .line 30
    return-void
.end method

.method public final b()I
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/j;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tapjoy/internal/j;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
