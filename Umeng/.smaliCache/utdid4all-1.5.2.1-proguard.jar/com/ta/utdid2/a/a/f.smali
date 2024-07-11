.class public Lcom/ta/utdid2/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "([\t\r\n])+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/a/a/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_19

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 24
    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    aget-char v2, p0, v1

    add-int/2addr v0, v2

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    move v1, v0

    .line 28
    :cond_19
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 14
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a

    .line 15
    const/4 p0, 0x0

    return p0

    .line 17
    :cond_a
    const/4 p0, 0x1

    return p0
.end method
