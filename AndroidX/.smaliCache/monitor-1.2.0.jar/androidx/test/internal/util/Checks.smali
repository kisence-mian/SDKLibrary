.class public final Landroidx/test/internal/util/Checks;
.super Ljava/lang/Object;
.source "Checks.java"


# static fields
.field private static final THREAD_CHECKER:Landroidx/test/internal/platform/ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 132
    const-class v0, Landroidx/test/internal/platform/ThreadChecker;

    invoke-static {v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadService(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "impls":Ljava/util/List;, "Ljava/util/List<Landroidx/test/internal/platform/ThreadChecker;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 134
    new-instance v1, Landroidx/test/internal/util/Checks$1;

    invoke-direct {v1}, Landroidx/test/internal/util/Checks$1;-><init>()V

    sput-object v1, Landroidx/test/internal/util/Checks;->THREAD_CHECKER:Landroidx/test/internal/platform/ThreadChecker;

    goto :goto_24

    .line 152
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/platform/ThreadChecker;

    sput-object v1, Landroidx/test/internal/util/Checks;->THREAD_CHECKER:Landroidx/test/internal/platform/ThreadChecker;

    .line 158
    .end local v0    # "impls":Ljava/util/List;, "Ljava/util/List<Landroidx/test/internal/platform/ThreadChecker;>;"
    :goto_24
    return-void

    .line 155
    .restart local v0    # "impls":Ljava/util/List;, "Ljava/util/List<Landroidx/test/internal/platform/ThreadChecker;>;"
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Landroidx/test/internal/platform/ThreadChecker;

    .line 156
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Found more than one %s implementations."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(Z)V
    .registers 2
    .param p0, "expression"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .line 58
    if-eqz p0, :cond_3

    .line 61
    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .registers 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessage"
        }
    .end annotation

    .line 68
    if-eqz p0, :cond_3

    .line 71
    return-void

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessageTemplate",
            "errorMessageArgs"
        }
    .end annotation

    .line 79
    if-eqz p0, :cond_3

    .line 82
    return-void

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Landroidx/test/internal/util/Checks;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMainThread()V
    .registers 1

    .line 117
    sget-object v0, Landroidx/test/internal/util/Checks;->THREAD_CHECKER:Landroidx/test/internal/platform/ThreadChecker;

    invoke-interface {v0}, Landroidx/test/internal/platform/ThreadChecker;->checkMainThread()V

    .line 118
    return-void
.end method

.method public static checkNotMainThread()V
    .registers 1

    .line 126
    sget-object v0, Landroidx/test/internal/util/Checks;->THREAD_CHECKER:Landroidx/test/internal/platform/ThreadChecker;

    invoke-interface {v0}, Landroidx/test/internal/platform/ThreadChecker;->checkNotMainThread()V

    .line 127
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 33
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 36
    return-object p0

    .line 34
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 40
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 43
    return-object p0

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reference",
            "errorMessageTemplate",
            "errorMessageArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 48
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 53
    return-object p0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Landroidx/test/internal/util/Checks;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(Z)V
    .registers 2
    .param p0, "expression"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .line 85
    if-eqz p0, :cond_3

    .line 88
    return-void

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .registers 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessage"
        }
    .end annotation

    .line 95
    if-eqz p0, :cond_3

    .line 98
    return-void

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "errorMessageTemplate",
            "errorMessageArgs"
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_3

    .line 109
    return-void

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Landroidx/test/internal/util/Checks;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "template",
            "args"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 166
    .local v1, "templateStart":I
    const/4 v2, 0x0

    .line 167
    .local v2, "i":I
    :goto_13
    array-length v3, p1

    if-ge v2, v3, :cond_32

    .line 168
    const-string v3, "%s"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 169
    .local v3, "placeholderStart":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    .line 170
    goto :goto_32

    .line 172
    :cond_20
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v1, v3, 0x2

    .line 175
    .end local v3    # "placeholderStart":I
    move v2, v4

    goto :goto_13

    .line 176
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_32
    :goto_32
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    array-length v3, p1

    if-ge v2, v3, :cond_5f

    .line 180
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 182
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_49
    array-length v3, p1

    if-ge v2, v3, :cond_5a

    .line 183
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_49

    .line 186
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5a
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
