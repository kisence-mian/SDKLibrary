.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 7
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 79
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_12

    if-ne v2, v1, :cond_12

    .line 82
    return-object p0

    .line 84
    :cond_12
    add-int/lit8 v1, v0, -0x1

    mul-int v1, v1, v2

    .line 85
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 86
    .local v3, "toIndex":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_33

    if-lt v2, v4, :cond_33

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_24

    goto :goto_33

    .line 89
    :cond_24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_2e

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 92
    :cond_2e
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 87
    :cond_33
    :goto_33
    const/4 v4, 0x0

    return-object v4
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 29
    return v0

    .line 30
    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    .line 31
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_19

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 33
    :cond_1b
    if-nez p1, :cond_2c

    .line 34
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2a

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 37
    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 45
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_7

    const/4 v2, -0x1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, "page1":I
    :goto_b
    if-nez p1, :cond_f

    const/4 v0, -0x1

    goto :goto_13

    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "page2":I
    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_19

    const/4 v4, -0x1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 49
    .local v4, "pageSize1":I
    :goto_1d
    if-nez p1, :cond_21

    const/4 v3, -0x1

    goto :goto_25

    :cond_21
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 53
    .local v3, "pageSize2":I
    :goto_25
    const/4 v5, 0x1

    if-eq v2, v1, :cond_33

    if-ne v4, v1, :cond_2b

    goto :goto_33

    .line 57
    :cond_2b
    add-int/lit8 v6, v2, -0x1

    mul-int v6, v6, v4

    .line 58
    .local v6, "startIndex1":I
    add-int v7, v6, v4

    sub-int/2addr v7, v5

    .local v7, "endIndex1":I
    goto :goto_37

    .line 54
    .end local v6    # "startIndex1":I
    .end local v7    # "endIndex1":I
    :cond_33
    :goto_33
    const/4 v6, 0x0

    .line 55
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 61
    .restart local v7    # "endIndex1":I
    :goto_37
    if-eq v0, v1, :cond_44

    if-ne v3, v1, :cond_3c

    goto :goto_44

    .line 65
    :cond_3c
    add-int/lit8 v1, v0, -0x1

    mul-int v1, v1, v3

    .line 66
    .local v1, "startIndex2":I
    add-int v8, v1, v3

    sub-int/2addr v8, v5

    .local v8, "endIndex2":I
    goto :goto_48

    .line 62
    .end local v1    # "startIndex2":I
    .end local v8    # "endIndex2":I
    :cond_44
    :goto_44
    const/4 v1, 0x0

    .line 63
    .restart local v1    # "startIndex2":I
    const v8, 0x7fffffff

    .line 69
    .restart local v8    # "endIndex2":I
    :goto_48
    if-gt v6, v1, :cond_4d

    if-gt v1, v7, :cond_4d

    .line 70
    return v5

    .line 71
    :cond_4d
    if-gt v6, v8, :cond_52

    if-gt v8, v7, :cond_52

    .line 72
    return v5

    .line 74
    :cond_52
    const/4 v5, 0x0

    return v5
.end method
