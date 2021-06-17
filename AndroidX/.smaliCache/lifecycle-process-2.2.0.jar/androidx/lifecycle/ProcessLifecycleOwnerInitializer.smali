.class public Landroidx/lifecycle/ProcessLifecycleOwnerInitializer;
.super Landroid/content/ContentProvider;
.source "ProcessLifecycleOwnerInitializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .line 37
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwnerInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleDispatcher;->init(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwnerInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->init(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    return v0
.end method
