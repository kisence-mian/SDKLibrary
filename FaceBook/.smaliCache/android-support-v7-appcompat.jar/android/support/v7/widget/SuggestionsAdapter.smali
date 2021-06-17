.class Landroid/support/v7/widget/SuggestionsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/support/v7/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/support/v7/widget/SearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    .line 75
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    .line 84
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    .line 85
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 86
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 87
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 88
    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 98
    iput-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 99
    iput-object p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 100
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 103
    iput-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 105
    iput-object p4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 106
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "resourceUri"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 560
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_c

    .line 561
    const/4 v1, 0x0

    return-object v1

    .line 564
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "url"    # Ljava/lang/CharSequence;

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_23

    .line 337
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v0, "colorValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->textColorSearchUrl:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 342
    .end local v0    # "colorValue":Landroid/util/TypedValue;
    :cond_23
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 343
    .local v0, "text":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 346
    return-object v0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;

    const-string v0, "SuggestionsAdapter"

    .line 623
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 626
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_49

    .line 630
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    nop

    .line 631
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    .line 632
    .local v4, "iconId":I
    if-nez v4, :cond_17

    return-object v3

    .line 633
    :cond_17
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v4, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 635
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_48

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid icon resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-object v3

    .line 640
    :cond_48
    return-object v6

    .line 627
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "iconId":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_49
    move-exception v2

    move-object v4, v3

    .line 628
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-object v3
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 601
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "componentIconKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 604
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 605
    .local v1, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_18

    goto :goto_22

    :cond_18
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_22
    return-object v2

    .line 608
    .end local v1    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 610
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 611
    .local v2, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2e
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-object v1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .line 652
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 653
    .local v0, "col":I
    invoke-static {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 583
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 584
    return-object v0

    .line 588
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 526
    const-string v0, "Error closing icon stream for "

    const-string v1, "SuggestionsAdapter"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "scheme":Ljava/lang/String;
    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_8f

    if-eqz v4, :cond_30

    .line 530
    :try_start_11
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_15} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_8f

    return-object v0

    .line 531
    :catch_16
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_17
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "uri":Landroid/net/Uri;
    throw v4

    .line 536
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_30
    iget-object v4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_3a} :catch_8f

    .line 537
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_76

    .line 541
    :try_start_3c
    invoke-static {v4, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_5a

    .line 544
    :try_start_40
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_8f

    .line 547
    goto :goto_59

    .line 545
    :catch_44
    move-exception v6

    .line 546
    .local v6, "ex":Ljava/io/IOException;
    :try_start_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_59} :catch_8f

    .line 547
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_59
    return-object v5

    .line 543
    :catchall_5a
    move-exception v5

    .line 544
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5e} :catch_8f

    .line 547
    goto :goto_74

    .line 545
    :catch_5f
    move-exception v6

    .line 546
    .restart local v6    # "ex":Ljava/io/IOException;
    :try_start_60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_74
    nop

    .end local p1    # "uri":Landroid/net/Uri;
    throw v5

    .line 538
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_76
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_8f} :catch_8f

    .line 550
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_8f
    move-exception v0

    .line 551
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-object v2
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "drawableId"    # Ljava/lang/String;

    .line 483
    const/4 v0, 0x0

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_79

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_79

    .line 488
    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 490
    .local v1, "resourceId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 494
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_40

    .line 495
    return-object v3

    .line 498
    :cond_40
    iget-object v4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 500
    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_4a} :catch_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_4a} :catch_4b

    .line 501
    return-object v3

    .line 512
    .end local v1    # "resourceId":I
    .end local v2    # "drawableUri":Ljava/lang/String;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_4b
    move-exception v1

    .line 514
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuggestionsAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v0

    .line 502
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_65
    move-exception v0

    .line 504
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 505
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6d

    .line 506
    return-object v1

    .line 508
    :cond_6d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 509
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 510
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 511
    return-object v1

    .line 484
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_79
    :goto_79
    return-object v0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 361
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 364
    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_12

    .line 367
    return-object v1

    .line 369
    :cond_12
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 373
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    .line 657
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 658
    return-object v0

    .line 661
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 662
    :catch_a
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    return-object v0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    .line 387
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    if-nez p2, :cond_9

    .line 390
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 392
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    invoke-virtual {p2, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 402
    :goto_14
    return-void
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 356
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    :goto_13
    return-void
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 568
    if-eqz p2, :cond_b

    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_b
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 195
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 203
    .local v0, "extras":Landroid/os/Bundle;
    :goto_8
    if-eqz v0, :cond_10

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 205
    return-void

    .line 208
    :cond_10
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 277
    .local v0, "views":Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v1, 0x0

    .line 278
    .local v1, "flags":I
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 279
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 281
    :cond_10
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    .line 282
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "text1":Ljava/lang/String;
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 285
    .end local v2    # "text1":Ljava/lang/String;
    :cond_1f
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_61

    .line 287
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "text2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_33

    .line 289
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_39

    .line 291
    :cond_33
    iget v6, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v6}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 296
    :goto_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 297
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v6, :cond_5c

    .line 298
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 299
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_5c

    .line 302
    :cond_4e
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v6, :cond_5c

    .line 303
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 304
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 307
    :cond_5c
    :goto_5c
    iget-object v6, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v6, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 310
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_61
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v2, :cond_6f

    .line 311
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {p0, v2, v6, v7}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 313
    :cond_6f
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v2, :cond_7e

    .line 314
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v2, v7, v6}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 316
    :cond_7e
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v2, v4, :cond_8f

    if-ne v2, v5, :cond_89

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_89

    goto :goto_8f

    .line 323
    :cond_89
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a4

    .line 319
    :cond_8f
    :goto_8f
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v2, v0, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :goto_a4
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;

    .line 217
    iget-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    const-string v1, "SuggestionsAdapter"

    if-eqz v0, :cond_11

    .line 218
    const-string v0, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_10
    return-void

    .line 224
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 226
    if-eqz p1, :cond_46

    .line 227
    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    .line 228
    const-string v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    .line 229
    const-string v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 230
    const-string v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 231
    const-string v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 232
    const-string v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    .line 236
    :cond_46
    goto :goto_4d

    .line 234
    :catch_47
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public close()V
    .registers 2

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    .line 176
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 414
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 415
    return-object v0

    .line 418
    :cond_4
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 420
    return-object v1

    .line 423
    :cond_d
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 424
    const-string v2, "suggest_intent_data"

    invoke-static {p1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 426
    return-object v2

    .line 430
    .end local v2    # "data":Ljava/lang/String;
    :cond_1e
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 431
    const-string v2, "suggest_text_1"

    invoke-static {p1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 433
    return-object v2

    .line 437
    .end local v2    # "text1":Ljava/lang/String;
    :cond_2f
    return-object v0
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 681
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_15} :catch_af

    .line 684
    .local v1, "r":Landroid/content/res/Resources;
    nop

    .line 686
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 687
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_96

    .line 690
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 692
    .local v3, "len":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_49

    .line 694
    :try_start_24
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2e} :catch_2f

    .line 697
    .local v4, "id":I
    goto :goto_5d

    .line 695
    .end local v4    # "id":I
    :catch_2f
    move-exception v4

    .line 696
    .local v4, "e":Ljava/lang/NumberFormatException;
    .local v5, "id":I
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Single path segment is not a resource ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 692
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "id":I
    :cond_49
    move v6, v5

    .line 698
    .local v6, "id":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_7d

    .line 699
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 703
    .end local v6    # "id":I
    .local v4, "id":I
    :goto_5d
    if-eqz v4, :cond_64

    .line 706
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    .line 704
    :cond_64
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No resource found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 701
    .end local v4    # "id":I
    :cond_7d
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than two path segments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    .end local v3    # "len":I
    :cond_96
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 682
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_af
    move-exception v2

    .line 683
    .restart local v1    # "r":Landroid/content/res/Resources;
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package found for authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 678
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c9
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getQueryRefinement()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 16
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 713
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 714
    return-object v0

    .line 717
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "authority":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 719
    return-object v0

    .line 722
    :cond_b
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 729
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "contentPath":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 731
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 735
    :cond_2d
    const-string v3, "search_suggest_query"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 738
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 741
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_42

    .line 742
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object v4, v5

    move-object v10, v4

    goto :goto_46

    .line 744
    :cond_42
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v10, v4

    .line 747
    .end local v4    # "selArgs":[Ljava/lang/String;
    .local v10, "selArgs":[Ljava/lang/String;
    :goto_46
    if-lez p3, :cond_51

    .line 748
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limit"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 751
    :cond_51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 754
    .local v11, "uri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    move-object v7, v3

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 449
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 450
    :catch_5
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Search suggestions cursor threw exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_26

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 456
    .local v2, "views":Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 457
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    .end local v2    # "views":Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_26
    return-object v1
.end method

.method public hasStableIds()Z
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    sget v1, Landroid/support/v7/appcompat/R$id;->edit_query:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 249
    .local v1, "iconRefine":Landroid/widget/ImageView;
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 181
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 184
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .line 189
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 330
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 332
    :cond_10
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 146
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "query":Ljava/lang/String;
    :goto_9
    const/4 v1, 0x0

    .line 152
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_35

    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_35

    .line 157
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v4, 0x32

    invoke-virtual {p0, v2, v0, v4}, Landroid/support/v7/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 160
    if-eqz v1, :cond_2b

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2a} :catch_2c

    .line 162
    return-object v1

    .line 166
    :cond_2b
    goto :goto_34

    .line 164
    :catch_2c
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_34
    return-object v3

    .line 154
    :cond_35
    :goto_35
    return-object v3
.end method

.method public setQueryRefinement(I)V
    .registers 2
    .param p1, "refineWhat"    # I

    .line 118
    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 119
    return-void
.end method
