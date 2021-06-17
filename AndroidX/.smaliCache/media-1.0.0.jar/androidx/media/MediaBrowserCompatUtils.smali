.class public Landroidx/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 33
    return v0

    .line 34
    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    .line 35
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_19

    .line 36
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 37
    :cond_1b
    if-nez p1, :cond_2c

    .line 38
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2a

    .line 39
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 41
    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    .line 43
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
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

    .line 49
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_7

    const/4 v2, -0x1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "page1":I
    :goto_b
    if-nez p1, :cond_f

    const/4 v0, -0x1

    goto :goto_13

    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "page2":I
    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_19

    const/4 v4, -0x1

    goto :goto_1d

    .line 52
    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_1d
    nop

    .line 53
    .local v4, "pageSize1":I
    if-nez p1, :cond_22

    const/4 v3, -0x1

    goto :goto_26

    .line 54
    :cond_22
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_26
    nop

    .line 57
    .local v3, "pageSize2":I
    const/4 v5, 0x1

    if-eq v2, v1, :cond_33

    if-ne v4, v1, :cond_2d

    goto :goto_33

    .line 61
    :cond_2d
    mul-int v6, v4, v2

    .line 62
    .local v6, "startIndex1":I
    add-int v7, v6, v4

    sub-int/2addr v7, v5

    .local v7, "endIndex1":I
    goto :goto_37

    .line 58
    .end local v6    # "startIndex1":I
    .end local v7    # "endIndex1":I
    :cond_33
    :goto_33
    const/4 v6, 0x0

    .line 59
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 65
    .restart local v7    # "endIndex1":I
    :goto_37
    if-eq v0, v1, :cond_42

    if-ne v3, v1, :cond_3c

    goto :goto_42

    .line 69
    :cond_3c
    mul-int v1, v3, v0

    .line 70
    .local v1, "startIndex2":I
    add-int v8, v1, v3

    sub-int/2addr v8, v5

    .local v8, "endIndex2":I
    goto :goto_46

    .line 66
    .end local v1    # "startIndex2":I
    .end local v8    # "endIndex2":I
    :cond_42
    :goto_42
    const/4 v1, 0x0

    .line 67
    .restart local v1    # "startIndex2":I
    const v8, 0x7fffffff

    .line 74
    .restart local v8    # "endIndex2":I
    :goto_46
    if-lt v7, v1, :cond_4b

    if-lt v8, v6, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    :goto_4c
    return v5
.end method
