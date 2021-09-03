.class public Lcom/tds/common/localize/LocalizeStore;
.super Ljava/lang/Object;
.source "LocalizeStore.java"


# instance fields
.field private isDomestic:Z

.field private final langDictSparseArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private preferredLang:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/localize/LocalizeStore;->langDictSparseArray:Ljava/util/HashMap;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/localize/LocalizeStore;->preferredLang:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .registers 8
    .param p1, "dict"    # Lorg/json/JSONObject;
    .param p2, "domestic"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/localize/LocalizeStore;->langDictSparseArray:Ljava/util/HashMap;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/localize/LocalizeStore;->preferredLang:I

    .line 26
    sget-object v0, Lcom/tds/common/localize/LocalizeManager;->supportedLangMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_23
    iget-object v2, p0, Lcom/tds/common/localize/LocalizeStore;->langDictSparseArray:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_36} :catch_37

    .line 31
    goto :goto_3b

    .line 29
    :catch_37
    move-exception v2

    .line 30
    .local v2, "jsonException":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 32
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "jsonException":Lorg/json/JSONException;
    :goto_3b
    goto :goto_17

    .line 33
    :cond_3c
    iput-boolean p2, p0, Lcom/tds/common/localize/LocalizeStore;->isDomestic:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "resId"    # Ljava/lang/String;

    .line 38
    const-string v0, ""

    :try_start_2
    iget v1, p0, Lcom/tds/common/localize/LocalizeStore;->preferredLang:I

    .line 39
    .local v1, "lang":I
    iget-object v2, p0, Lcom/tds/common/localize/LocalizeStore;->langDictSparseArray:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 40
    .local v2, "dict":Lorg/json/JSONObject;
    if-nez v2, :cond_1a

    iget-boolean v3, p0, Lcom/tds/common/localize/LocalizeStore;->isDomestic:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x2

    :goto_19
    move v1, v3

    .line 41
    :cond_1a
    iget-object v3, p0, Lcom/tds/common/localize/LocalizeStore;->langDictSparseArray:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    move-object v2, v3

    .line 42
    if-nez v2, :cond_2a

    return-object v0

    .line 43
    :cond_2a
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    return-object v0

    .line 44
    .end local v1    # "lang":I
    .end local v2    # "dict":Lorg/json/JSONObject;
    :catch_2f
    move-exception v1

    .line 45
    .local v1, "jsonException":Ljava/lang/Exception;
    return-object v0
.end method

.method setPreferredLang(I)V
    .registers 2
    .param p1, "lang"    # I

    .line 22
    iput p1, p0, Lcom/tds/common/localize/LocalizeStore;->preferredLang:I

    .line 23
    return-void
.end method
