.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroidx/core/os/CancellationSignal;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2b

    .line 76
    if-eqz p6, :cond_f

    .line 79
    :try_start_8
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 83
    :catch_d
    move-exception v0

    goto :goto_20

    .line 79
    :cond_f
    const/4 v0, 0x0

    :goto_10
    check-cast v0, Landroid/os/CancellationSignal;

    move-object v7, v0

    check-cast v7, Landroid/os/CancellationSignal;

    .line 81
    .local v7, "cancellationSignalObj":Landroid/os/CancellationSignal;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_d

    return-object v0

    .line 84
    .end local v7    # "cancellationSignalObj":Landroid/os/CancellationSignal;
    .local v0, "e":Ljava/lang/Exception;
    :goto_20
    instance-of v1, v0, Landroid/os/OperationCanceledException;

    if-eqz v1, :cond_2a

    .line 87
    new-instance v1, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v1}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v1

    .line 90
    :cond_2a
    throw v0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    if-eqz p6, :cond_30

    .line 97
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_30
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
