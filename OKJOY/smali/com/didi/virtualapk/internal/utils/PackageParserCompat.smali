.class public final Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "flags"    # I

    .prologue
    .line 34
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_15

    sget v1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v1, :cond_15

    .line 36
    :cond_10
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 42
    :goto_14
    return-object v1

    .line 37
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_20

    .line 38
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    goto :goto_14

    .line 39
    :cond_20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2b

    .line 40
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    goto :goto_14

    .line 42
    :cond_2b
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v1

    goto :goto_14

    .line 45
    :catch_30
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
