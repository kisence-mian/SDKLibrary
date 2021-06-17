.class public final Lcom/tapjoy/internal/g;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/l<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/l;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/g;->c:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 4

    .line 16
    nop

    .line 1020
    iget-object v0, p0, Lcom/tapjoy/internal/g;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/g;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tapjoy/internal/g;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method
