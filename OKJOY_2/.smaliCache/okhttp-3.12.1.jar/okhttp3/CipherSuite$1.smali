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
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokhttp3/CipherSuite$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x4

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "limit":I
    :goto_d
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_23

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 53
    .local v4, "charA":C
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 54
    .local v5, "charB":C
    if-eq v4, v5, :cond_20

    if-ge v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    .line 51
    .end local v4    # "charA":C
    .end local v5    # "charB":C
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 56
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    .local v0, "lengthA":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 58
    .local v1, "lengthB":I
    if-eq v0, v1, :cond_32

    if-ge v0, v1, :cond_30

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    return v2

    .line 59
    :cond_32
    const/4 v2, 0x0

    return v2
.end method
