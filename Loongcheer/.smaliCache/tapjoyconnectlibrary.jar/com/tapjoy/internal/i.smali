.class public final Lcom/tapjoy/internal/i;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/l<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:D


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/l;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tapjoy/internal/i;->c:D

    .line 12
    return-void
.end method


# virtual methods
.method public final a()D
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_11

    .line 23
    :try_start_b
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v0

    .line 24
    :catch_10
    move-exception v0

    .line 28
    :cond_11
    iget-wide v0, p0, Lcom/tapjoy/internal/i;->c:D

    return-wide v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/i;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/i;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method
