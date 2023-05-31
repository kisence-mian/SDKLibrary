.class public final Landroid/support/v4/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filters"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    if-nez p0, :cond_5

    move-object v0, v3

    .line 105
    :cond_4
    :goto_4
    return-object v0

    .line 97
    :cond_5
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_20

    aget-object v0, p1, v4

    .line 99
    .local v0, "filter":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "filterParts":[Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .end local v0    # "filter":Ljava/lang/String;
    .end local v1    # "filterParts":[Ljava/lang/String;
    :cond_20
    move-object v0, v3

    .line 105
    goto :goto_4
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "mimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    if-nez p0, :cond_5

    move-object v1, v3

    .line 127
    :cond_4
    :goto_4
    return-object v1

    .line 119
    :cond_5
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "filterParts":[Ljava/lang/String;
    array-length v5, p0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_20

    aget-object v1, p0, v4

    .line 121
    .local v1, "mimeType":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "mimeTypeParts":[Ljava/lang/String;
    :cond_20
    move-object v1, v3

    .line 127
    goto :goto_4
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v2, 0x0

    .line 83
    :goto_3
    return v2

    .line 80
    :cond_4
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "mimeTypeParts":[Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "filterParts":[Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    goto :goto_3
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "mimeTypes"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 137
    if-nez p0, :cond_6

    .line 138
    new-array v4, v4, [Ljava/lang/String;

    .line 150
    :goto_5
    return-object v4

    .line 141
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "filterParts":[Ljava/lang/String;
    array-length v5, p0

    :goto_12
    if-ge v4, v5, :cond_28

    aget-object v2, p0, v4

    .line 144
    .local v2, "mimeType":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/support/v4/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 150
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "mimeTypeParts":[Ljava/lang/String;
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_5
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p0, "mimeTypeParts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "filterParts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    array-length v2, p1

    if-eq v2, v3, :cond_e

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_e
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 53
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_26
    array-length v2, p0

    if-eq v2, v3, :cond_2a

    .line 68
    :cond_29
    :goto_29
    return v0

    .line 59
    :cond_2a
    const-string v2, "*"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    aget-object v2, p1, v0

    aget-object v3, p0, v0

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 63
    :cond_3e
    const-string v2, "*"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    aget-object v2, p1, v1

    aget-object v3, p0, v1

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_52
    move v0, v1

    .line 68
    goto :goto_29
.end method
