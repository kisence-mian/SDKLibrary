.class public final Lcom/tapjoy/internal/k;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/l;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tapjoy/internal/k;->c:J

    .line 12
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/k;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tapjoy/internal/k;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method
