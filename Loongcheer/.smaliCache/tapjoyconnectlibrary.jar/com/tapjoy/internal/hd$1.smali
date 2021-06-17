.class final Lcom/tapjoy/internal/hd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hd;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 92
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1207
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.senderIds"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    return-object p1
.end method

.method public final a(Landroid/content/Context;I)V
    .registers 4

    .line 127
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1235
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.appVersion"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .registers 5

    .line 147
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    .line 2023
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2024
    const-string v0, "gcm.onServerExpirationTime"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2025
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 97
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1211
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.senderIds"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .registers 4

    .line 117
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1227
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.stale"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1215
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.regId"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    return-object p1
.end method

.method public final b(Landroid/content/Context;I)V
    .registers 4

    .line 162
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 2259
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.backoff"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 107
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1219
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.regId"

    invoke-static {p1, v0, p2}, Lcom/tapjoy/internal/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .registers 3

    .line 137
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hl;->a(Z)V

    .line 138
    return-void
.end method

.method public final c(Landroid/content/Context;)Z
    .registers 4

    .line 112
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1223
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.stale"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 112
    return p1
.end method

.method public final d(Landroid/content/Context;)I
    .registers 4

    .line 122
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1231
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.appVersion"

    const/high16 v1, -0x80000000

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 122
    return p1
.end method

.method public final e(Landroid/content/Context;)Z
    .registers 4

    .line 132
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1239
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.onServer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 132
    return p1
.end method

.method public final f(Landroid/content/Context;)J
    .registers 5

    .line 142
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 1247
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.onServerExpirationTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 142
    return-wide v0
.end method

.method public final g(Landroid/content/Context;)I
    .registers 4

    .line 157
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 2255
    iget-object p1, p1, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "gcm.backoff"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 157
    return p1
.end method
