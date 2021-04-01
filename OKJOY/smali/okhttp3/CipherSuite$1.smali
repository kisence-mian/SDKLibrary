.class Lokhttp3/CipherSuite$1;
.super Ljava/lang/Object;
.source "CipherSuite.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokhttp3/CipherSuite$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 51
    const/4 v2, 0x4

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "limit":I
    :goto_f
    if-ge v2, v5, :cond_23

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    .local v0, "charA":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 54
    .local v1, "charB":C
    if-eq v0, v1, :cond_20

    if-ge v0, v1, :cond_1e

    .line 59
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_1d
    :goto_1d
    return v6

    .restart local v0    # "charA":C
    .restart local v1    # "charB":C
    :cond_1e
    move v6, v7

    .line 54
    goto :goto_1d

    .line 51
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 56
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 57
    .local v3, "lengthA":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 58
    .local v4, "lengthB":I
    if-eq v3, v4, :cond_31

    if-lt v3, v4, :cond_1d

    move v6, v7

    goto :goto_1d

    .line 59
    :cond_31
    const/4 v6, 0x0

    goto :goto_1d
.end method
