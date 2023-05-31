.class final Landroid/support/v4/os/LocaleListHelper;
.super Ljava/lang/Object;
.source "LocaleListHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 50
    new-array v0, v1, [Ljava/util/Locale;

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    .line 51
    new-instance v0, Landroid/support/v4/os/LocaleListHelper;

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 299
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 300
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 350
    const-string v0, "en-Latn"

    invoke-static {v0}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    .line 478
    sput-object v3, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 480
    sput-object v3, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 482
    sput-object v3, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 484
    sput-object v3, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V
    .registers 12
    .param p1, "topLocale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "otherLocales"    # Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    if-nez p1, :cond_f

    .line 210
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "topLocale is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_f
    if-nez p2, :cond_46

    move v1, v7

    .line 214
    .local v1, "inputLength":I
    :goto_12
    const/4 v5, -0x1

    .line 215
    .local v5, "topLocaleIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_21

    .line 216
    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 217
    move v5, v0

    .line 222
    :cond_21
    if-ne v5, v8, :cond_4d

    const/4 v6, 0x1

    :goto_24
    add-int v3, v1, v6

    .line 223
    .local v3, "outputLength":I
    new-array v2, v3, [Ljava/util/Locale;

    .line 224
    .local v2, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v2, v7

    .line 225
    if-ne v5, v8, :cond_4f

    .line 227
    const/4 v0, 0x0

    :goto_33
    if-ge v0, v1, :cond_76

    .line 228
    add-int/lit8 v7, v0, 0x1

    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v2, v7

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 213
    .end local v0    # "i":I
    .end local v1    # "inputLength":I
    .end local v2    # "localeList":[Ljava/util/Locale;
    .end local v3    # "outputLength":I
    .end local v5    # "topLocaleIndex":I
    :cond_46
    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v6

    goto :goto_12

    .line 215
    .restart local v0    # "i":I
    .restart local v1    # "inputLength":I
    .restart local v5    # "topLocaleIndex":I
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_4d
    move v6, v7

    .line 222
    goto :goto_24

    .line 231
    .restart local v2    # "localeList":[Ljava/util/Locale;
    .restart local v3    # "outputLength":I
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    if-ge v0, v5, :cond_63

    .line 232
    add-int/lit8 v7, v0, 0x1

    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v2, v7

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 234
    :cond_63
    add-int/lit8 v0, v5, 0x1

    :goto_65
    if-ge v0, v1, :cond_76

    .line 235
    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v2, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 239
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_7c
    if-ge v0, v3, :cond_93

    .line 241
    aget-object v6, v2, v0

    invoke-static {v6}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_90

    .line 244
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 248
    :cond_93
    iput-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 250
    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .registers 11
    .param p1, "list"    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    array-length v6, p1

    if-nez v6, :cond_f

    .line 174
    sget-object v6, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object v6, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 175
    const-string v6, ""

    iput-object v6, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 199
    :goto_e
    return-void

    .line 177
    :cond_f
    array-length v6, p1

    new-array v3, v6, [Ljava/util/Locale;

    .line 178
    .local v3, "localeList":[Ljava/util/Locale;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v5, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    array-length v6, p1

    if-ge v0, v6, :cond_87

    .line 181
    aget-object v1, p1, v0

    .line 182
    .local v1, "l":Ljava/util/Locale;
    if-nez v1, :cond_43

    .line 183
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_43
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 185
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is a repetition"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    :cond_68
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 188
    .local v2, "localeClone":Ljava/util/Locale;
    aput-object v2, v3, v0

    .line 189
    invoke-static {v2}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_81

    .line 191
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_81
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 196
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "localeClone":Ljava/util/Locale;
    :cond_87
    iput-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_e
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .registers 5
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    .line 393
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    goto :goto_8
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .registers 10
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 354
    iget-object v5, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    move v0, v4

    .line 386
    :cond_8
    :goto_8
    return v0

    .line 357
    :cond_9
    iget-object v5, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    if-nez v5, :cond_10

    .line 358
    const/4 v0, -0x1

    goto :goto_8

    .line 361
    :cond_10
    const v0, 0x7fffffff

    .line 363
    .local v0, "bestIndex":I
    if-eqz p2, :cond_22

    .line 364
    sget-object v5, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v5}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 365
    .local v1, "idx":I
    if-nez v1, :cond_1f

    move v0, v4

    .line 366
    goto :goto_8

    .line 367
    :cond_1f
    if-ge v1, v0, :cond_22

    .line 368
    move v0, v1

    .line 371
    .end local v1    # "idx":I
    :cond_22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    .local v2, "languageTag":Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 375
    .local v3, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v3}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 376
    .restart local v1    # "idx":I
    if-nez v1, :cond_3e

    move v0, v4

    .line 377
    goto :goto_8

    .line 378
    :cond_3e
    if-ge v1, v0, :cond_26

    .line 379
    move v0, v1

    goto :goto_26

    .line 382
    .end local v1    # "idx":I
    .end local v2    # "languageTag":Ljava/lang/String;
    .end local v3    # "supportedLocale":Ljava/util/Locale;
    :cond_42
    const v5, 0x7fffffff

    if-ne v0, v5, :cond_8

    move v0, v4

    .line 384
    goto :goto_8
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .registers 5
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 342
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Landroid/support/v4/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    .line 343
    .local v1, "score":I
    if-lez v1, :cond_11

    .line 347
    .end local v0    # "idx":I
    .end local v1    # "score":I
    :goto_10
    return v0

    .line 341
    .restart local v0    # "idx":I
    .restart local v1    # "score":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "score":I
    :cond_14
    const v0, 0x7fffffff

    goto :goto_10
.end method

.method static forLanguageTags(Ljava/lang/String;)Landroid/support/v4/os/LocaleListHelper;
    .registers 6
    .param p0, "list"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 274
    :cond_8
    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;

    move-result-object v3

    .line 281
    :goto_c
    return-object v3

    .line 276
    :cond_d
    const-string v3, ","

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "tags":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [Ljava/util/Locale;

    .line 278
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    array-length v3, v1

    if-ge v0, v3, :cond_26

    .line 279
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 281
    :cond_26
    new-instance v3, Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v3, v1}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    goto :goto_c
.end method

.method static getAdjustedDefault()Landroid/support/v4/os/LocaleListHelper;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getDefault()Landroid/support/v4/os/LocaleListHelper;

    .line 534
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_6
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v1

    return-object v0

    .line 536
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method static getDefault()Landroid/support/v4/os/LocaleListHelper;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 503
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 504
    :try_start_7
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 505
    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 509
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    if-eqz v1, :cond_26

    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    const/4 v3, 0x0

    .line 510
    invoke-virtual {v1, v3}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 513
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v2

    .line 523
    :goto_25
    return-object v1

    .line 515
    :cond_26
    new-instance v1, Landroid/support/v4/os/LocaleListHelper;

    sget-object v3, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v1, v0, v3}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 517
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 523
    :cond_33
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v2

    goto :goto_25

    .line 524
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method

.method static getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 286
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_14

    .line 287
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 294
    .end local v0    # "script":Ljava/lang/String;
    :goto_10
    return-object v0

    .line 291
    .restart local v0    # "script":Ljava/lang/String;
    :cond_11
    const-string v0, ""

    goto :goto_10

    .line 294
    .end local v0    # "script":Ljava/lang/String;
    :cond_14
    const-string v0, ""

    goto :goto_10
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .registers 2
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 308
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .registers 7
    .param p0, "supportedLocales"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-nez p0, :cond_5

    .line 471
    :cond_4
    :goto_4
    return v1

    .line 459
    :cond_5
    array-length v3, p0

    const/4 v4, 0x3

    if-le v3, v4, :cond_b

    move v1, v2

    .line 464
    goto :goto_4

    .line 466
    :cond_b
    array-length v4, p0

    move v3, v2

    :goto_d
    if-ge v3, v4, :cond_4

    aget-object v0, p0, v3

    .line 467
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v0}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    move v1, v2

    .line 468
    goto :goto_4

    .line 466
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .registers 9
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v4

    .line 337
    :cond_9
    :goto_9
    return v3

    .line 316
    :cond_a
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 319
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 324
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "supportedScr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 329
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_42
    move v3, v4

    goto :goto_9

    .line 334
    .end local v1    # "supportedRegion":Ljava/lang/String;
    :cond_44
    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "desiredScr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    :goto_4e
    move v3, v4

    goto :goto_9

    :cond_50
    move v4, v3

    goto :goto_4e
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;)V
    .registers 2
    .param p0, "locales"    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/os/LocaleListHelper;->setDefault(Landroid/support/v4/os/LocaleListHelper;I)V

    .line 551
    return-void
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;I)V
    .registers 6
    .param p0, "locales"    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p1, "localeIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 564
    if-nez p0, :cond_a

    .line 565
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_18
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_1b
    invoke-virtual {p0, p1}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 572
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 573
    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 574
    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 575
    if-nez p1, :cond_32

    .line 576
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 581
    :goto_30
    monitor-exit v1

    .line 582
    return-void

    .line 578
    :cond_32
    new-instance v0, Landroid/support/v4/os/LocaleListHelper;

    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v0, v2, v3}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    goto :goto_30

    .line 581
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_3e

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    if-ne p1, p0, :cond_5

    .line 124
    .end local p1    # "other":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v2

    .line 112
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    instance-of v4, p1, Landroid/support/v4/os/LocaleListHelper;

    if-nez v4, :cond_b

    move v2, v3

    .line 113
    goto :goto_4

    .line 115
    :cond_b
    check-cast p1, Landroid/support/v4/os/LocaleListHelper;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 116
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v4, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    array-length v5, v1

    if-eq v4, v5, :cond_17

    move v2, v3

    .line 117
    goto :goto_4

    .line 119
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v4, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 120
    iget-object v4, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    move v2, v3

    .line 121
    goto :goto_4

    .line 119
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 62
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getFirstMatchIndex([Ljava/lang/String;)I
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 129
    const/4 v1, 0x1

    .line 130
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 131
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    :cond_16
    return v1
.end method

.method indexOf(Ljava/util/Locale;)I
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 100
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 104
    .end local v0    # "i":I
    :goto_10
    return v0

    .line 99
    .restart local v0    # "i":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method isEmpty()Z
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method size()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method toLanguageTags()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 141
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_23

    .line 143
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 146
    :cond_26
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
