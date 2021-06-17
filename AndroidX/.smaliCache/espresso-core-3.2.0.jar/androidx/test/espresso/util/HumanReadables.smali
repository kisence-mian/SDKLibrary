.class public final Landroidx/test/espresso/util/HumanReadables;
.super Ljava/lang/Object;
.source "HumanReadables.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    const-string p0, "Cursor positioned before first element."

    return-object p0

    .line 103
    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 104
    const-string p0, "Cursor positioned after last element."

    return-object p0

    .line 106
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Row "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    array-length v4, v1

    if-ge v3, v4, :cond_c6

    .line 109
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v4, 0x3

    .line 111
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_46

    .line 112
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    .line 114
    :cond_46
    const-string v5, "\""

    packed-switch v4, :pswitch_data_d0

    .line 141
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 129
    :pswitch_5b
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 130
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/4 v5, 0x0

    :goto_65
    const/4 v6, 0x5

    if-ge v5, v6, :cond_78

    array-length v7, v4

    if-ge v5, v7, :cond_78

    .line 132
    aget-byte v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 135
    :cond_78
    array-length v5, v4

    if-ge v6, v5, :cond_8c

    .line 136
    const-string v5, "... ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v4

    sub-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more elements)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_8c
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_bd

    .line 116
    :pswitch_92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    goto :goto_bd

    .line 122
    :pswitch_a2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto :goto_bd

    .line 119
    :pswitch_af
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_bd

    .line 126
    :pswitch_b7
    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    nop

    .line 144
    :goto_bd
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2d

    .line 146
    :cond_c6
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_af
        :pswitch_a2
        :pswitch_92
        :pswitch_5b
    .end packed-switch
.end method

.method public static describe(Landroid/view/View;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 157
    if-nez p0, :cond_5

    .line 158
    const-string p0, "null"

    return-object p0

    .line 160
    :cond_5
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Landroidx/test/espresso/util/HumanReadables;->isViewIdGenerated(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 163
    :try_start_2a
    const-string v1, "res-name"

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_3b} :catch_3c

    .line 166
    goto :goto_3d

    .line 164
    :catch_3c
    move-exception v1

    .line 168
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 172
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    sparse-switch v1, :sswitch_data_17e

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    goto :goto_6f

    .line 174
    :sswitch_5d
    const-string v1, "GONE"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 175
    goto :goto_6f

    .line 177
    :sswitch_63
    const-string v1, "INVISIBLE"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 178
    goto :goto_6f

    .line 180
    :sswitch_69
    const-string v1, "VISIBLE"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 181
    nop

    .line 186
    :goto_6f
    nop

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    const-string v3, "has-focus"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    const-string v3, "has-focusable"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    const-string v3, "has-window-focus"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    const-string v3, "is-clickable"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const-string v3, "is-enabled"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    const-string v3, "is-focused"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    const-string v3, "is-focusable"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    const-string v3, "is-layout-requested"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    const-string v3, "is-selected"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "layout-params"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "tag"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_104

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    const-string v2, "root-is-layout-requested"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 206
    :cond_104
    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 207
    invoke-virtual {p0, v1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_111

    const/4 v2, 0x1

    goto :goto_112

    :cond_111
    const/4 v2, 0x0

    .line 209
    :goto_112
    const-string v3, "has-input-connection"

    invoke-virtual {v0, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 210
    if-eqz v2, :cond_143

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v3, Landroid/util/StringBuilderPrinter;

    invoke-direct {v3, v2}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 214
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 215
    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "editor-info"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 219
    :cond_143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_15c

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;F)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    const-string v3, "y"

    invoke-virtual {v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;F)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 223
    :cond_15c
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_166

    .line 224
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/test/espresso/util/HumanReadables;->innerDescribe(Landroid/widget/TextView;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V

    .line 226
    :cond_166
    instance-of v1, p0, Landroid/widget/Checkable;

    if-eqz v1, :cond_170

    .line 227
    move-object v1, p0

    check-cast v1, Landroid/widget/Checkable;

    invoke-static {v1, v0}, Landroidx/test/espresso/util/HumanReadables;->innerDescribe(Landroid/widget/Checkable;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V

    .line 229
    :cond_170
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_179

    .line 230
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroidx/test/espresso/util/HumanReadables;->innerDescribe(Landroid/view/ViewGroup;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V

    .line 232
    :cond_179
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_17e
    .sparse-switch
        0x0 -> :sswitch_69
        0x4 -> :sswitch_63
        0x8 -> :sswitch_5d
    .end sparse-switch
.end method

.method public static getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10
        }
        names = {
            "rootView",
            "problemViews",
            "errorHeader",
            "problemViewSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-eqz p3, :cond_7

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    if-eqz p3, :cond_23

    .line 68
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 69
    const-string v0, "\nProblem views are marked with \'%s\' below."

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_23
    const-string p2, "\n\nView Hierarchy:\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p2, "\n"

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->on(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;

    move-result-object p2

    .line 79
    invoke-static {p0}, Landroidx/test/espresso/util/TreeIterables;->depthFirstViewTraversalWithDistance(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object p0

    new-instance v0, Landroidx/test/espresso/util/HumanReadables$1;

    invoke-direct {v0, p1, p3}, Landroidx/test/espresso/util/HumanReadables$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->transform(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Ljava/lang/Iterable;

    move-result-object p0

    .line 76
    invoke-virtual {p2, v2, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static innerDescribe(Landroid/view/ViewGroup;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "helper"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const-string v0, "child-count"

    invoke-virtual {p1, v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 259
    return-void
.end method

.method private static innerDescribe(Landroid/widget/Checkable;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "checkable",
            "helper"
        }
    .end annotation

    .line 254
    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    const-string v0, "is-checked"

    invoke-virtual {p1, v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 255
    return-void
.end method

.method private static innerDescribe(Landroid/widget/TextView;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textBox",
            "helper"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 237
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 240
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 241
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "error-text"

    invoke-virtual {p1, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 244
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 245
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "hint"

    invoke-virtual {p1, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 248
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const-string v1, "input-type"

    invoke-virtual {p1, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 249
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v0

    const-string v1, "ime-target"

    invoke-virtual {p1, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 250
    invoke-virtual {p0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_48

    const/4 p0, 0x1

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    const-string v0, "has-links"

    invoke-virtual {p1, v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 251
    return-void
.end method

.method private static isViewIdGenerated(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 267
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_d

    const v0, 0xffffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
