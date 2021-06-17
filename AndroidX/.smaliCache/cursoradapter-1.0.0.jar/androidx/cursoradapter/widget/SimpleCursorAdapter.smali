.class public Landroidx/cursoradapter/widget/SimpleCursorAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 70
    iput-object p5, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 71
    iput-object p4, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 72
    invoke-direct {p0, p3, p4}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 96
    iput-object p5, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 97
    iput-object p4, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 98
    invoke-direct {p0, p3, p4}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;

    .line 316
    if-eqz p1, :cond_1f

    .line 318
    array-length v0, p2

    .line 319
    .local v0, "count":I
    iget-object v1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v1, :cond_a

    array-length v1, v1

    if-eq v1, v0, :cond_e

    .line 320
    :cond_a
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    .line 322
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1e

    .line 323
    iget-object v2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 325
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1e
    goto :goto_22

    .line 326
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    .line 328
    :goto_22
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 126
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    .line 127
    .local v0, "binder":Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    iget-object v1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    array-length v1, v1

    .line 128
    .local v1, "count":I
    iget-object v2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    .line 129
    .local v2, "from":[I
    iget-object v3, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 131
    .local v3, "to":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v1, :cond_69

    .line 132
    aget v5, v3, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 133
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_66

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "bound":Z
    if-eqz v0, :cond_1d

    .line 136
    aget v7, v2, v4

    invoke-interface {v0, v5, p3, v7}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v6

    .line 139
    :cond_1d
    if-nez v6, :cond_66

    .line 140
    aget v7, v2, v4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "text":Ljava/lang/String;
    if-nez v7, :cond_29

    .line 142
    const-string v7, ""

    .line 145
    :cond_29
    instance-of v8, v5, Landroid/widget/TextView;

    if-eqz v8, :cond_34

    .line 146
    move-object v8, v5

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0, v8, v7}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_66

    .line 147
    :cond_34
    instance-of v8, v5, Landroid/widget/ImageView;

    if-eqz v8, :cond_3f

    .line 148
    move-object v8, v5

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v7}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_66

    .line 150
    :cond_3f
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "bound":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 156
    .end local v4    # "i":I
    :cond_69
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .line 351
    iput-object p2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 352
    iput-object p3, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 356
    invoke-direct {p0, p1, p2}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 358
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 299
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_9

    .line 300
    invoke-interface {v0, p1}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 301
    :cond_9
    iget v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_13
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCursorToStringConverter()Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    .line 267
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .registers 2

    .line 233
    iget v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    .line 167
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2
    .param p1, "cursorToStringConverter"    # Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 283
    iput-object p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 284
    return-void
.end method

.method public setStringConversionColumn(I)V
    .registers 2
    .param p1, "stringConversionColumn"    # I

    .line 251
    iput p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 252
    return-void
.end method

.method public setViewBinder(Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2
    .param p1, "viewBinder"    # Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    .line 180
    iput-object p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    .line 181
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .line 200
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 203
    goto :goto_10

    .line 201
    :catch_8
    move-exception v0

    .line 202
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 204
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_10
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .param p1, "c"    # Landroid/database/Cursor;

    .line 335
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
