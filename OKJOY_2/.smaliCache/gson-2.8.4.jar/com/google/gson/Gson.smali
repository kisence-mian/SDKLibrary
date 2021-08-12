.class public final Lcom/google/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final builderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final builderHierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/google/gson/Gson$FutureTypeAdapter<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field final datePattern:Ljava/lang/String;

.field final dateStyle:I

.field final excluder:Lcom/google/gson/internal/Excluder;

.field final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

.field final generateNonExecutableJson:Z

.field final htmlSafe:Z

.field final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field final lenient:Z

.field final longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field final prettyPrinting:Z

.field final serializeNulls:Z

.field final serializeSpecialFloatingPointValues:Z

.field final timeStyle:I

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/google/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    sput-object v0, Lcom/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 185
    sget-object v1, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 185
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v0 .. v17}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 192
    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 36
    .param p1, "excluder"    # Lcom/google/gson/internal/Excluder;
    .param p2, "fieldNamingStrategy"    # Lcom/google/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "lenient"    # Z
    .param p10, "serializeSpecialFloatingPointValues"    # Z
    .param p11, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .param p12, "datePattern"    # Ljava/lang/String;
    .param p13, "dateStyle"    # I
    .param p14, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/Excluder;",
            "Lcom/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;ZZZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    .local p15, "builderFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    .local p16, "builderHierarchyFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    .local p17, "factoriesToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 126
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 202
    iput-object v1, v0, Lcom/google/gson/Gson;->excluder:Lcom/google/gson/internal/Excluder;

    .line 203
    iput-object v2, v0, Lcom/google/gson/Gson;->fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

    .line 204
    iput-object v3, v0, Lcom/google/gson/Gson;->instanceCreators:Ljava/util/Map;

    .line 205
    new-instance v6, Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v6, v3}, Lcom/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 206
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 207
    iput-boolean v4, v0, Lcom/google/gson/Gson;->complexMapKeySerialization:Z

    .line 208
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    .line 209
    move/from16 v9, p7

    iput-boolean v9, v0, Lcom/google/gson/Gson;->htmlSafe:Z

    .line 210
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/google/gson/Gson;->prettyPrinting:Z

    .line 211
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/google/gson/Gson;->lenient:Z

    .line 212
    iput-boolean v5, v0, Lcom/google/gson/Gson;->serializeSpecialFloatingPointValues:Z

    .line 213
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/google/gson/Gson;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 214
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/google/gson/Gson;->datePattern:Ljava/lang/String;

    .line 215
    move/from16 v14, p13

    iput v14, v0, Lcom/google/gson/Gson;->dateStyle:I

    .line 216
    move/from16 v15, p14

    iput v15, v0, Lcom/google/gson/Gson;->timeStyle:I

    .line 217
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/google/gson/Gson;->builderFactories:Ljava/util/List;

    .line 218
    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    .line 220
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 223
    .local v17, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    move-object/from16 v7, v17

    .end local v17    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    .local v7, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v3, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v3, p17

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static/range {p11 .. p11}, Lcom/google/gson/Gson;->longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;

    move-result-object v3

    .line 239
    .local v3, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v3}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    .line 241
    invoke-direct {v0, v5}, Lcom/google/gson/Gson;->doubleAdapter(Z)Lcom/google/gson/TypeAdapter;

    move-result-object v10

    .line 240
    invoke-static {v8, v9, v10}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    .line 243
    invoke-direct {v0, v5}, Lcom/google/gson/Gson;->floatAdapter(Z)Lcom/google/gson/TypeAdapter;

    move-result-object v10

    .line 242
    invoke-static {v8, v9, v10}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-class v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Lcom/google/gson/Gson;->atomicLongAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-class v8, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Lcom/google/gson/Gson;->atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const-class v8, Ljava/math/BigDecimal;

    sget-object v9, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

    invoke-static {v8, v9}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-class v8, Ljava/math/BigInteger;

    sget-object v9, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/TypeAdapter;

    invoke-static {v8, v9}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v8, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v8, Lcom/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v8, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v8, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v8, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {v8, v6}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v8, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {v8, v6, v4}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v8, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v8, v6}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    iput-object v8, v0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 274
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v9, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v9, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    invoke-direct {v9, v6, v2, v1, v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    .line 280
    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;

    .line 894
    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_b

    goto :goto_21

    .line 895
    :cond_b
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    throw v0
    :try_end_13
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_13

    .line 899
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_13
    move-exception v0

    .line 900
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 897
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 898
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 901
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :cond_21
    :goto_21
    nop

    .line 902
    return-void
.end method

.method private static atomicLongAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 387
    .local p0, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 395
    invoke-virtual {v0}, Lcom/google/gson/Gson$4;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 399
    .local p0, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$5;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 422
    invoke-virtual {v0}, Lcom/google/gson/Gson$5;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 399
    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .registers 5
    .param p0, "value"    # D

    .line 357
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    .line 362
    return-void

    .line 358
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleAdapter(Z)Lcom/google/gson/TypeAdapter;
    .registers 3
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 309
    if-eqz p1, :cond_5

    .line 310
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/TypeAdapter;

    return-object v0

    .line 312
    :cond_5
    new-instance v0, Lcom/google/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$1;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method private floatAdapter(Z)Lcom/google/gson/TypeAdapter;
    .registers 3
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 333
    if-eqz p1, :cond_5

    .line 334
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/TypeAdapter;

    return-object v0

    .line 336
    :cond_5
    new-instance v0, Lcom/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$2;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method private static longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;
    .registers 2
    .param p0, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_7

    .line 366
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/TypeAdapter;

    return-object v0

    .line 368
    :cond_7
    new-instance v0, Lcom/google/gson/Gson$3;

    invoke-direct {v0}, Lcom/google/gson/Gson$3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public excluder()Lcom/google/gson/internal/Excluder;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/google/gson/Gson;->excluder:Lcom/google/gson/internal/Excluder;

    return-object v0
.end method

.method public fieldNamingStrategy()Lcom/google/gson/FieldNamingStrategy;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/google/gson/Gson;->fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

    return-object v0
.end method

.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 960
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 961
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 984
    if-nez p1, :cond_4

    .line 985
    const/4 v0, 0x0

    return-object v0

    .line 987
    :cond_4
    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 8
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 914
    const/4 v0, 0x1

    .line 915
    .local v0, "isEmpty":Z
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    .line 916
    .local v1, "oldLenient":Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 918
    :try_start_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 919
    const/4 v0, 0x0

    .line 920
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    .line 921
    .local v2, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v3

    .line 922
    .local v3, "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v3, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_19} :catch_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_19} :catch_27
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_19} :catch_20
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 923
    .local v4, "object":Ljava/lang/Object;, "TT;"
    nop

    .line 939
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 923
    return-object v4

    .line 939
    .end local v2    # "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    .end local v3    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    :catchall_1e
    move-exception v2

    goto :goto_3c

    .line 935
    :catch_20
    move-exception v2

    .line 937
    .local v2, "e":Ljava/io/IOException;
    :try_start_21
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3

    .line 933
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :catch_27
    move-exception v2

    .line 934
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_1e

    .line 924
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :catch_2e
    move-exception v2

    .line 929
    .local v2, "e":Ljava/io/EOFException;
    if-eqz v0, :cond_36

    .line 930
    const/4 v3, 0x0

    .line 939
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 930
    return-object v3

    .line 932
    :cond_36
    :try_start_36
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_1e

    .line 939
    .end local v2    # "e":Ljava/io/EOFException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :goto_3c
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;,
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 859
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v0

    .line 860
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 861
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 862
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v0

    .line 887
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 888
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 889
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 808
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 809
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 832
    if-nez p1, :cond_4

    .line 833
    const/4 v0, 0x0

    return-object v0

    .line 835
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 837
    .local v1, "target":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 433
    .local p1, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_7

    sget-object v1, Lcom/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;

    goto :goto_8

    :cond_7
    move-object v1, p1

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/TypeAdapter;

    .line 434
    .local v0, "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_11

    .line 435
    return-object v0

    .line 438
    :cond_11
    iget-object v1, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 439
    .local v1, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v2, 0x0

    .line 440
    .local v2, "requiresThreadLocalCleanup":Z
    if-nez v1, :cond_28

    .line 441
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 442
    iget-object v3, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 443
    const/4 v2, 0x1

    .line 447
    :cond_28
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/Gson$FutureTypeAdapter;

    .line 448
    .local v3, "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v3, :cond_31

    .line 449
    return-object v3

    .line 453
    :cond_31
    :try_start_31
    new-instance v4, Lcom/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v4}, Lcom/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 454
    .local v4, "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v5, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/TypeAdapterFactory;

    .line 457
    .local v6, "factory":Lcom/google/gson/TypeAdapterFactory;
    invoke-interface {v6, p0, p1}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v7

    .line 458
    .local v7, "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v7, :cond_65

    .line 459
    invoke-virtual {v4, v7}, Lcom/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/google/gson/TypeAdapter;)V

    .line 460
    iget-object v5, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_31 .. :try_end_59} :catchall_7f

    .line 461
    nop

    .line 466
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    if-eqz v2, :cond_64

    .line 469
    iget-object v5, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 461
    :cond_64
    return-object v7

    .line 463
    .end local v6    # "factory":Lcom/google/gson/TypeAdapterFactory;
    .end local v7    # "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_65
    goto :goto_3f

    .line 464
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSON cannot handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v1    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    .end local v2    # "requiresThreadLocalCleanup":Z
    .end local v3    # "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local p1    # "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    throw v5
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_7f

    .line 466
    .end local v4    # "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .restart local v0    # "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v1    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    .restart local v2    # "requiresThreadLocalCleanup":Z
    .restart local v3    # "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .restart local p1    # "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    :catchall_7f
    move-exception v4

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    if-eqz v2, :cond_8a

    .line 469
    iget-object v5, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8a
    throw v4
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 555
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 7
    .param p1, "skipPast"    # Lcom/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/TypeAdapterFactory;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 527
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 528
    iget-object p1, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 531
    :cond_a
    const/4 v0, 0x0

    .line 532
    .local v0, "skipPastFound":Z
    iget-object v1, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/TypeAdapterFactory;

    .line 533
    .local v2, "factory":Lcom/google/gson/TypeAdapterFactory;
    if-nez v0, :cond_23

    .line 534
    if-ne v2, p1, :cond_11

    .line 535
    const/4 v0, 0x1

    goto :goto_11

    .line 540
    :cond_23
    invoke-interface {v2, p0, p2}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v3

    .line 541
    .local v3, "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v3, :cond_2a

    .line 542
    return-object v3

    .line 544
    .end local v2    # "factory":Lcom/google/gson/TypeAdapterFactory;
    .end local v3    # "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_2a
    goto :goto_11

    .line 545
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public htmlSafe()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    return v0
.end method

.method public newBuilder()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 289
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0, p0}, Lcom/google/gson/GsonBuilder;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 762
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 763
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    iget-boolean v1, p0, Lcom/google/gson/Gson;->lenient:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 764
    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    iget-boolean v0, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_9

    .line 748
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 750
    :cond_9
    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 751
    .local v0, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_17

    .line 752
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 754
    :cond_17
    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 755
    return-object v0
.end method

.method public serializeNulls()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    return v0
.end method

.method public toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .registers 4
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;

    .line 721
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 722
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 723
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "src"    # Ljava/lang/Object;

    .line 614
    if-nez p1, :cond_9

    .line 615
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 617
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .line 636
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 637
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 638
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .registers 8
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 772
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    .line 773
    .local v0, "oldLenient":Z
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 774
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 775
    .local v1, "oldHtmlSafe":Z
    iget-boolean v2, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 776
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    .line 777
    .local v2, "oldSerializeNulls":Z
    iget-boolean v3, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 779
    :try_start_1a
    invoke-static {p1, p2}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_2a
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 783
    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 784
    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 785
    invoke-virtual {p2, v2}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 786
    nop

    .line 787
    return-void

    .line 783
    :catchall_28
    move-exception v3

    goto :goto_31

    .line 780
    :catch_2a
    move-exception v3

    .line 781
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "oldLenient":Z
    .end local v1    # "oldHtmlSafe":Z
    .end local v2    # "oldSerializeNulls":Z
    .end local p1    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local p2    # "writer":Lcom/google/gson/stream/JsonWriter;
    throw v4
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    .line 783
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "oldLenient":Z
    .restart local v1    # "oldHtmlSafe":Z
    .restart local v2    # "oldSerializeNulls":Z
    .restart local p1    # "jsonElement":Lcom/google/gson/JsonElement;
    .restart local p2    # "writer":Lcom/google/gson/stream/JsonWriter;
    :goto_31
    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 784
    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 785
    invoke-virtual {p2, v2}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v3
.end method

.method public toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .registers 5
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 736
    :try_start_0
    invoke-static {p2}, Lcom/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 737
    .local v0, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    .line 740
    .end local v0    # "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    nop

    .line 741
    return-void

    .line 738
    :catch_d
    move-exception v0

    .line 739
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 656
    if-eqz p1, :cond_a

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_f

    .line 659
    :cond_a
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 661
    :goto_f
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    .registers 10
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 695
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 696
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 697
    .local v1, "oldLenient":Z
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 698
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 699
    .local v2, "oldHtmlSafe":Z
    iget-boolean v3, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 700
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 701
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 703
    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_32
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    .line 707
    invoke-virtual {p3, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 708
    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 709
    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 710
    nop

    .line 711
    return-void

    .line 707
    :catchall_30
    move-exception v4

    goto :goto_39

    .line 704
    :catch_32
    move-exception v4

    .line 705
    .local v4, "e":Ljava/io/IOException;
    :try_start_33
    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v4}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v1    # "oldLenient":Z
    .end local v2    # "oldHtmlSafe":Z
    .end local v3    # "oldSerializeNulls":Z
    .end local p1    # "src":Ljava/lang/Object;
    .end local p2    # "typeOfSrc":Ljava/lang/reflect/Type;
    .end local p3    # "writer":Lcom/google/gson/stream/JsonWriter;
    throw v5
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    .line 707
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v1    # "oldLenient":Z
    .restart local v2    # "oldHtmlSafe":Z
    .restart local v3    # "oldSerializeNulls":Z
    .restart local p1    # "src":Ljava/lang/Object;
    .restart local p2    # "typeOfSrc":Ljava/lang/reflect/Type;
    .restart local p3    # "writer":Lcom/google/gson/stream/JsonWriter;
    :goto_39
    invoke-virtual {p3, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 708
    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 709
    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 681
    :try_start_0
    invoke-static {p3}, Lcom/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 682
    .local v0, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    .line 685
    .end local v0    # "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    nop

    .line 686
    return-void

    .line 683
    :catch_d
    move-exception v0

    .line 684
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .registers 3
    .param p1, "src"    # Ljava/lang/Object;

    .line 572
    if-nez p1, :cond_5

    .line 573
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0

    .line 575
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .registers 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .line 595
    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 596
    .local v0, "writer":Lcom/google/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 597
    invoke-virtual {v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1019
    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1020
    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1021
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    return-object v0
.end method
