.class public abstract Lcom/appsflyer/internal/bj;
.super Lcom/appsflyer/internal/bh;
.source ""


# direct methods
.method constructor <init>()V
    .registers 2

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/appsflyer/internal/bj;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .registers 11

    .line 12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 13
    return-void
.end method
