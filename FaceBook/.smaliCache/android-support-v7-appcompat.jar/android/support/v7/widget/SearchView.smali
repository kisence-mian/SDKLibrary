.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final IS_AT_LEAST_FROYO:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

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

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    .line 160
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 268
    sget v0, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v2, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v2, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v2, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 904
    new-instance v2, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 928
    new-instance v3, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1103
    new-instance v3, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1287
    new-instance v4, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v4, v0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v4, v0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1298
    new-instance v5, Landroid/support/v7/widget/SearchView$11;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v5, v0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1591
    new-instance v6, Landroid/support/v7/widget/SearchView$12;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v6, v0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 274
    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v1, v8, v6, v9, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v6

    .line 277
    .local v6, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v6}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v10

    iput-object v10, v0, Landroid/support/v7/widget/SearchView;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 279
    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 281
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v11, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    invoke-virtual {v6, v11, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    .line 282
    .local v11, "layoutResId":I
    const/4 v12, 0x1

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 283
    sget v13, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v13, v0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 284
    invoke-virtual {v13, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 286
    sget v14, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 287
    sget v14, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 288
    sget v15, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 289
    sget v12, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 290
    sget v7, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    .line 291
    sget v1, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 292
    sget v8, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 293
    sget v9, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 295
    move-object/from16 v16, v10

    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    const/4 v14, 0x0

    invoke-virtual {v6, v10, v14}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v0, Landroid/support/v7/widget/SearchView;->mSearchIconResId:I

    .line 298
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    sget v10, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v6, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget v9, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 306
    sget v9, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {v6, v9, v10}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 308
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v13, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    invoke-virtual {v13, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 316
    invoke-virtual {v13, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    invoke-virtual {v13, v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v13, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 320
    new-instance v1, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v13, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 328
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 330
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 331
    .local v1, "maxWidth":I
    if-eq v1, v2, :cond_15c

    .line 332
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 334
    :cond_15c
    sget v3, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v6, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 335
    .local v3, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 336
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 338
    :cond_16b
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v6, v4, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 339
    .local v4, "imeOptions":I
    if-eq v4, v2, :cond_176

    .line 340
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 342
    :cond_176
    sget v5, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v6, v5, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 343
    .local v5, "inputType":I
    if-eq v5, v2, :cond_181

    .line 344
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 347
    :cond_181
    const/4 v2, 0x1

    .line 348
    .local v2, "focusable":Z
    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v6, v7, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 351
    invoke-virtual {v6}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 354
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 355
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "web_search"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 360
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 363
    if-eqz v7, :cond_1c8

    .line 364
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_1c5

    .line 365
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    goto :goto_1c8

    .line 367
    :cond_1c5
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    .line 371
    :cond_1c8
    :goto_1c8
    iget-boolean v7, v0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 373
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 104
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SearchView;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # I

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SearchView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;
    .param p1, "x1"    # Z

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .registers 3

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 394
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 384
    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .registers 9

    .line 1244
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5f

    .line 1245
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1246
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1247
    .local v1, "anchorPadding":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1248
    .local v2, "dropDownPadding":Landroid/graphics/Rect;
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1249
    .local v3, "isLayoutRtl":Z
    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_32

    sget v4, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 1253
    .local v4, "iconOffset":I
    :goto_33
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1255
    if-eqz v3, :cond_42

    .line 1256
    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .local v5, "offset":I
    goto :goto_47

    .line 1258
    .end local v5    # "offset":I
    :cond_42
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 1260
    .restart local v5    # "offset":I
    :goto_47
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1261
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    .line 1263
    .local v6, "width":I
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1265
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "anchorPadding":I
    .end local v2    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "iconOffset":I
    .end local v5    # "offset":I
    .end local v6    # "width":I
    :cond_5f
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .line 1414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1419
    if-eqz p2, :cond_f

    .line 1420
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1422
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string v2, "user_query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1423
    if-eqz p4, :cond_1d

    .line 1424
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    :cond_1d
    if-eqz p3, :cond_24

    .line 1427
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 1430
    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1432
    :cond_2d
    if-eqz p5, :cond_39

    .line 1433
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    :cond_39
    sget-boolean v1, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v1, :cond_46

    .line 1437
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1439
    :cond_46
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 12

    .line 1538
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    if-nez v1, :cond_15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_15

    .line 1541
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1543
    :cond_15
    if-nez v1, :cond_1b

    .line 1544
    const-string v1, "android.intent.action.SEARCH"

    move-object v2, v1

    goto :goto_1c

    .line 1543
    :cond_1b
    move-object v2, v1

    .line 1548
    :goto_1c
    const-string v1, "suggest_intent_data"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    sget-boolean v3, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v3, :cond_2e

    if-nez v1, :cond_2e

    .line 1550
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    .line 1553
    :cond_2e
    if-eqz v1, :cond_53

    .line 1554
    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1555
    if-eqz v3, :cond_53

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1559
    :cond_53
    if-nez v1, :cond_57

    move-object v3, v0

    goto :goto_5c

    :cond_57
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    .line 1561
    :goto_5c
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1562
    const-string v1, "suggest_intent_extra_data"

    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1564
    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6f} :catch_70

    return-object p1

    .line 1565
    :catch_70
    move-exception p2

    .line 1568
    :try_start_71
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_75} :catch_76

    .line 1571
    goto :goto_78

    .line 1569
    :catch_76
    move-exception p1

    .line 1570
    const/4 p1, -0x1

    .line 1572
    :goto_78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " returned exception."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 14
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1463
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1468
    .local v0, "searchActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1470
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1477
    .local v2, "pending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1478
    .local v3, "queryExtras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_27

    .line 1479
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1485
    :cond_27
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1488
    .local v4, "voiceIntent":Landroid/content/Intent;
    const-string v5, "free_form"

    .line 1489
    .local v5, "languageModel":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1490
    .local v6, "prompt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1491
    .local v7, "language":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1493
    .local v8, "maxResults":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-lt v9, v10, :cond_6f

    .line 1494
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1495
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_49

    .line 1496
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1498
    :cond_49
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_57

    .line 1499
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1501
    :cond_57
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_65

    .line 1502
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1504
    :cond_65
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_6f

    .line 1505
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    .line 1508
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_6f
    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    const-string v9, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string v9, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const-string v9, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    if-nez v0, :cond_87

    const/4 v9, 0x0

    goto :goto_8b

    :cond_87
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    :goto_8b
    const-string v10, "calling_package"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string v9, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1517
    const-string v9, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1519
    return-object v4
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1448
    .local v0, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1449
    .local v1, "searchActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_d

    const/4 v2, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    :goto_11
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    return-object v0
.end method

.method private dismissSuggestions()V
    .registers 2

    .line 1143
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1144
    return-void
.end method

.method private forceSuggestionQuery()V
    .registers 3

    .line 1579
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1580
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1581
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1016
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v0, :cond_5

    .line 1017
    return-object p1

    .line 1020
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mSearchIconResId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1021
    .local v0, "searchIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1022
    .local v1, "textSize":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1024
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1025
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1026
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1027
    return-object v2
.end method

.method private getPreferredWidth()I
    .registers 3

    .line 793
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .registers 5

    .line 815
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "testIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_21

    .line 820
    :cond_17
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 821
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 823
    :cond_21
    :goto_21
    if-eqz v0, :cond_35

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 826
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1

    .line 829
    .end local v0    # "testIntent":Landroid/content/Intent;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_35
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    .line 833
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1371
    if-nez p1, :cond_3

    .line 1372
    return-void

    .line 1377
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    .line 1380
    goto :goto_24

    .line 1378
    :catch_b
    move-exception v0

    .line 1379
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1393
    const-string v7, "android.intent.action.SEARCH"

    .line 1394
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1395
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1396
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1354
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1355
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1357
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1360
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1362
    const/4 v2, 0x1

    return v2

    .line 1364
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private onCloseClicked()V
    .registers 5

    .line 1147
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1148
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 1149
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_31

    .line 1151
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1153
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1155
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_31

    .line 1159
    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1161
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1164
    :cond_31
    :goto_31
    return-void
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .registers 6
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1268
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    .line 1275
    :cond_c
    return v1

    .line 1270
    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1271
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1272
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1273
    const/4 v0, 0x1

    return v0
.end method

.method private onItemSelected(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    .line 1284
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1281
    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1282
    const/4 v0, 0x1

    return v0
.end method

.method private onSearchClicked()V
    .registers 2

    .line 1167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 1171
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1173
    :cond_14
    return-void
.end method

.method private onSubmitQuery()V
    .registers 5

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1130
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2f

    .line 1131
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1133
    :cond_1c
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 1134
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_29
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1137
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1140
    :cond_2f
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 973
    return v1

    .line 975
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_b

    .line 976
    return v1

    .line 978
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_65

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 981
    const/16 v0, 0x42

    if-eq p2, v0, :cond_59

    const/16 v0, 0x54

    if-eq p2, v0, :cond_59

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_24

    goto :goto_59

    .line 989
    :cond_24
    const/16 v0, 0x15

    if-eq p2, v0, :cond_37

    const/16 v2, 0x16

    if-ne p2, v2, :cond_2d

    goto :goto_37

    .line 1005
    :cond_2d
    const/16 v0, 0x13

    if-ne p2, v0, :cond_65

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    .line 1008
    return v1

    .line 994
    :cond_37
    :goto_37
    if-ne p2, v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_41

    :cond_3b
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    .line 996
    .local v0, "selPoint":I
    :goto_41
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 997
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 998
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 999
    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1001
    return v3

    .line 983
    .end local v0    # "selPoint":I
    :cond_59
    :goto_59
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 984
    .local v0, "position":I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1011
    .end local v0    # "position":I
    :cond_65
    return v1
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1116
    .local v0, "text":Ljava/lang/CharSequence;
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1118
    .local v1, "hasText":Z
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 1119
    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1120
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1121
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1122
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1123
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1125
    :cond_33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1126
    return-void
.end method

.method private onVoiceClicked()V
    .registers 5

    .line 1178
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_5

    .line 1179
    return-void

    .line 1181
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1183
    .local v0, "searchable":Landroid/app/SearchableInfo;
    :try_start_7
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1184
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1186
    .local v1, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "webSearchIntent":Landroid/content/Intent;
    goto :goto_2f

    .line 1187
    :cond_1b
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1188
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1190
    .local v1, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_2e} :catch_31

    goto :goto_30

    .line 1187
    .end local v1    # "appSearchIntent":Landroid/content/Intent;
    :cond_2f
    :goto_2f
    nop

    .line 1196
    :goto_30
    goto :goto_39

    .line 1192
    :catch_31
    move-exception v1

    .line 1195
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_39
    return-void
.end method

.method private postUpdateFocusedState()V
    .registers 2

    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1322
    .local v0, "oldQuery":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1323
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_f

    .line 1324
    return-void

    .line 1326
    :cond_f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1328
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1329
    .local v2, "newQuery":Ljava/lang/CharSequence;
    if-eqz v2, :cond_21

    .line 1332
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1335
    :cond_21
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1337
    .end local v2    # "newQuery":Ljava/lang/CharSequence;
    :goto_24
    goto :goto_28

    .line 1339
    :cond_25
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1341
    :goto_28
    return-void
.end method

.method private setImeVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .line 883
    if-eqz p1, :cond_8

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 886
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 887
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 890
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 891
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 894
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    :goto_23
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .line 1387
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_13
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1390
    return-void
.end method

.method private updateCloseButton()V
    .registers 5

    .line 856
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 859
    .local v0, "hasText":Z
    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 860
    .local v1, "showClose":Z
    :cond_19
    :goto_19
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/16 v2, 0x8

    :goto_20
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_2e

    sget-object v3, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_30

    :cond_2e
    sget-object v3, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_30
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 862
    return-void
.end method

.method private updateFocusedState()V
    .registers 4

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 870
    .local v0, "focused":Z
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_11

    sget-object v2, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_13

    :cond_11
    sget-object v2, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_13
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_21

    sget-object v2, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_23

    :cond_21
    sget-object v2, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_23
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 872
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 873
    return-void
.end method

.method private updateQueryHint()V
    .registers 5

    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1032
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1033
    :cond_e
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_31

    .line 1034
    const/4 v1, 0x0

    .line 1035
    .local v1, "hint":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    .line 1036
    .local v0, "hintId":I
    if-eqz v0, :cond_25

    .line 1037
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    :cond_25
    if-eqz v1, :cond_30

    .line 1040
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1042
    .end local v0    # "hintId":I
    .end local v1    # "hint":Ljava/lang/CharSequence;
    :cond_30
    goto :goto_3c

    .line 1043
    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1045
    :goto_3c
    return-void
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1057
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 1060
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1061
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1062
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1069
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1072
    :cond_33
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1073
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_40

    .line 1074
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1078
    :cond_40
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 1079
    new-instance v1, Landroid/support/v7/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1081
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1082
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Landroid/support/v7/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_65

    const/4 v2, 0x2

    :cond_65
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1086
    :cond_68
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    .line 846
    const/16 v0, 0x8

    .line 847
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    .line 850
    :cond_18
    const/4 v0, 0x0

    .line 852
    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 853
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 4
    .param p1, "hasText"    # Z

    .line 837
    const/16 v0, 0x8

    .line 838
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_19

    .line 840
    :cond_18
    const/4 v0, 0x0

    .line 842
    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 9
    .param p1, "collapsed"    # Z

    .line 798
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    .line 800
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    .line 802
    .local v2, "visCollapsed":I
    :goto_b
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 804
    .local v3, "hasText":Z
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 806
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_26

    const/16 v6, 0x8

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 809
    if-nez v3, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 811
    return-void
.end method

.method private updateVoiceButton(Z)V
    .registers 5
    .param p1, "empty"    # Z

    .line 1095
    const/16 v0, 0x8

    .line 1096
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 1097
    const/4 v0, 0x0

    .line 1098
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1100
    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .registers 3

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 501
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 502
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 503
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 504
    return-void
.end method

.method public getImeOptions()I
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 754
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 4

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 602
    return-object v0

    .line 603
    :cond_5
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1d

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "hint":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    .line 606
    .local v0, "hintId":I
    if-eqz v0, :cond_1c

    .line 607
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    :cond_1c
    return-object v1

    .line 611
    .end local v0    # "hintId":I
    .end local v1    # "hint":Ljava/lang/CharSequence;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    .line 401
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    .line 397
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2

    .line 636
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .registers 2

    .line 664
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    .line 716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .registers 4

    .line 1221
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1225
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1226
    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    .line 1233
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_5

    return-void

    .line 1235
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1236
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1237
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 1240
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 879
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 880
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 760
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 761
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 762
    return-void

    .line 765
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 766
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 768
    .local v1, "width":I
    sparse-switch v0, :sswitch_data_46

    goto :goto_3c

    .line 779
    :sswitch_16
    iget v2, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3c

    .line 780
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3c

    .line 785
    :sswitch_1f
    iget v2, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_24

    goto :goto_28

    :cond_24
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v2

    :goto_28
    move v1, v2

    goto :goto_3c

    .line 771
    :sswitch_2a
    iget v2, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_33

    .line 772
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3c

    .line 774
    :cond_33
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 776
    nop

    .line 788
    :cond_3c
    :goto_3c
    const/high16 v0, 0x40000000    # 2.0f

    .line 789
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 790
    return-void

    :sswitch_data_46
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_1f
        0x40000000 -> :sswitch_16
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .line 901
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 902
    return-void
.end method

.method onTextFocusChanged()V
    .registers 2

    .line 1200
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1203
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1205
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 1207
    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .line 1211
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1213
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1214
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 481
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 483
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 485
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 487
    .local v0, "result":Z
    if-eqz v0, :cond_1e

    .line 488
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 490
    :cond_1e
    return v0

    .line 492
    .end local v0    # "result":Z
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .line 437
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 438
    return-void
.end method

.method public setIconified(Z)V
    .registers 2
    .param p1, "iconify"    # Z

    .line 650
    if-eqz p1, :cond_6

    .line 651
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_9

    .line 653
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    .line 655
    :goto_9
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3
    .param p1, "iconified"    # Z

    .line 625
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 626
    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 627
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 629
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 448
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 467
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxpixels"    # I

    .line 743
    iput p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    .line 745
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 746
    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$OnCloseListener;

    .line 522
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    .line 523
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 531
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 532
    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 513
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 514
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 552
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 553
    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 540
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 541
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 574
    if-eqz p1, :cond_12

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 576
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 580
    :cond_12
    if-eqz p2, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 581
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    .line 583
    :cond_1d
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 592
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 593
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 594
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 704
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v1, v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v1, :cond_12

    .line 706
    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz p1, :cond_e

    const/4 v1, 0x2

    goto :goto_f

    :cond_e
    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 709
    :cond_12
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 4
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .line 413
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 414
    if-eqz p1, :cond_e

    .line 415
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_b

    .line 416
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 418
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 421
    :cond_e
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 423
    if-eqz v0, :cond_26

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 428
    :cond_26
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 429
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 676
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 677
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 678
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v4/widget/CursorAdapter;

    .line 726
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    return-void
.end method
