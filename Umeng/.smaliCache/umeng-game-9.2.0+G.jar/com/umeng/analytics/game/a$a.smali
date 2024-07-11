.class Lcom/umeng/analytics/game/a$a;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/game/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:J = 0x1335127L


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 7

    .line 174
    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/game/a$a;->d:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    .line 176
    return-void
.end method

.method public c()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->a()V

    .line 180
    return-void
.end method

.method public d()V
    .registers 1

    .line 183
    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->b()V

    .line 184
    return-void
.end method

.method public e()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
