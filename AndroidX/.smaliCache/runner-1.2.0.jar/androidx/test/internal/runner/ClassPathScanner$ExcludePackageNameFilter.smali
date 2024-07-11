.class public Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;
.super Ljava/lang/Object;
.source "ClassPathScanner.java"

# interfaces
.implements Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/ClassPathScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcludePackageNameFilter"
.end annotation


# instance fields
.field private final pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "%s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;->pkgName:Ljava/lang/String;

    goto :goto_1c

    .line 136
    :cond_1a
    iput-object p1, p0, Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;->pkgName:Ljava/lang/String;

    .line 138
    :goto_1c
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathName"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
