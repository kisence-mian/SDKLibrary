.class public final Lcom/tapjoy/internal/n;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/l;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/n;->c:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 26
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p2, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/tapjoy/internal/n;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/n;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/tapjoy/internal/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method
