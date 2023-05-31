.class public final Landroid/support/v4/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "windowSizeBytes"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 42
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0, p1, p2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 47
    :goto_b
    return-object v0

    .line 43
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_18

    .line 44
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 47
    :cond_18
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    goto :goto_b
.end method
