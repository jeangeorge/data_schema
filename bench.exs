
schema = %{
  "SOAP-ENV:Envelope" => %{
    "SOAP-ENV:Body" => %{
      "ns1:XXTransactionResponse" => %{
        "RSP" => %{
          "AirShoppingRS" => %{
            "DataLists" => %{
              "BaggageAllowanceList" => %{
                "BaggageAllowance" =>
                  {:all,
                   %{
                     {:attr, "BaggageAllowanceID"} => true,
                     "AllowanceDescription" => %{
                       "Descriptions" => %{
                         "Description" => %{"Text" => %{text: true}}
                       }
                     },
                     "BaggageCategory" => %{text: true},
                     "BaggageDeterminingCarrier" => %{
                       "AirlineID" => %{text: true}
                     },
                     "PieceAllowance" => %{
                       "ApplicableBag" => %{text: true},
                       "ApplicableParty" => %{text: true},
                       "PieceMeasurements" => %{
                         "PieceDimensionAllowance" =>
                           {:all,
                            %{
                              "DimensionUOM" => %{text: true},
                              "Dimensions" => %{
                                "Category" => %{text: true},
                                "MaxValue" => %{text: true}
                              }
                            }},
                         "PieceWeightAllowance" =>
                           {:all,
                            %{
                              "MaximumWeight" => %{
                                "UOM" => %{text: true},
                                "Value" => %{text: true}
                              }
                            }}
                       },
                       "TotalQuantity" => %{text: true}
                     },
                     "WeightAllowance" =>
                       {:all,
                        %{
                          "ApplicableParty" => %{text: true},
                          "MaximumWeight" =>
                            {:all, %{"UOM" => %{text: true}, "Value" => %{text: true}}}
                        }}
                   }}
              },
              "FareList" => %{
                "FareGroup" =>
                  {:all,
                   %{
                     {:attr, "ListKey"} => true,
                     "Fare" => %{"FareCode" => %{text: true}},
                     "FareBasisCode" => %{"Code" => %{text: true}}
                   }}
              },
              "FlightList" => %{
                "Flight" =>
                  {:all,
                   %{
                     {:attr, "FlightKey"} => true,
                     "Journey" => %{"Time" => %{text: true}},
                     "SegmentReferences" => %{text: true}
                   }}
              },
              "OriginDestinationList" => %{
                "OriginDestination" =>
                  {:all,
                   %{
                     {:attr, "OriginDestinationKey"} => true,
                     "ArrivalCode" => %{text: true},
                     "DepartureCode" => %{text: true},
                     "FlightReferences" => %{text: true}
                   }}
              },
              "PassengerList" => %{
                "Passenger" =>
                  {:all,
                   %{
                     {:attr, "PassengerID"} => true,
                     "Individual" => %{
                       "Birthdate" => %{text: true},
                       "Gender" => %{text: true},
                       "GivenName" => %{text: true},
                       "NameTitle" => %{text: true},
                       "Surname" => %{text: true}
                     },
                     "PTC" => %{text: true}
                   }}
              }
            },
            "Errors" => %{
              "Error" =>
                {:all,
                 %{
                   :text => true,
                   {:attr, "Code"} => true,
                   {:attr, "Owner"} => true,
                   {:attr, "ShortText"} => true,
                   {:attr, "Status"} => true,
                   {:attr, "Type"} => true
                 }}
            },
            "Metadata" => %{
              "Other" => %{
                "OtherMetadata" => %{
                  "CurrencyMetadatas" => %{},
                  "RuleMetadatas" => %{}
                }
              }
            },
            "OffersGroup" => %{
              "AirlineOffers" => %{
                "Offer" =>
                  {:all,
                   %{
                     {:attr, "OfferID"} => true,
                     {:attr, "Owner"} => true,
                     "BaggageAllowance" =>
                       {:all,
                        %{
                          "BaggageAllowanceRef" => %{text: true},
                          "FlightRefs" => %{text: true},
                          "PassengerRefs" => %{text: true}
                        }},
                     "FlightsOverview" => %{
                       "FlightRef" =>
                         {:all,
                          %{
                            :text => true,
                            {:attr, "ODRef"} => true,
                            {:attr, "PriceClassRef"} => true
                          }}
                     },
                     "Match" => %{"MatchResult" => %{text: true}},
                     "NotImplemented" => %{text: true},
                     "OfferItem" =>
                       {:all,
                        %{
                          {:attr, "MandatoryInd"} => true,
                          {:attr, "OfferItemID"} => true,
                          "FareDetail" =>
                            {:all,
                             %{
                               "FareComponent" =>
                                 {:all,
                                  %{
                                    "FareBasis" => %{
                                      "CabinType" => %{
                                        "CabinTypeCode" => %{text: true},
                                        "CabinTypeName" => %{text: true}
                                      },
                                      "FareBasisCityPair" => %{text: true},
                                      "FareBasisCode" => %{
                                        {:attr, "refs"} => true,
                                        "Code" => %{text: true}
                                      },
                                      "RBD" => %{text: true}
                                    },
                                    "FareRules" => %{
                                      "Penalty" => %{
                                        {:attr, "refs"} => true,
                                        "Details" => %{
                                          "Detail" =>
                                            {:all,
                                             %{
                                               {:attr, "refs"} => true,
                                               "Type" => %{text: true}
                                             }}
                                        }
                                      },
                                      "Ticketing" => %{
                                        "Endorsements" => %{
                                          "Endorsement" => %{text: true}
                                        }
                                      }
                                    },
                                    "Price" => %{
                                      "BaseAmount" => %{
                                        :text => true,
                                        {:attr, "Code"} => true
                                      },
                                      "FareFiledIn" => %{
                                        "BaseAmount" => %{
                                          :text => true,
                                          {:attr, "Code"} => true
                                        },
                                        "ExchangeRate" => %{text: true},
                                        "NUCAmount" => %{text: true}
                                      },
                                      "Taxes" => %{
                                        "Breakdown" => %{
                                          "Tax" =>
                                            {:all,
                                             %{
                                               "Amount" => %{
                                                 :text => true,
                                                 {:attr, "Code"} => true
                                               },
                                               "Description" => %{text: true},
                                               "LocalAmount" => %{
                                                 :text => true,
                                                 {:attr, "Code"} => true
                                               },
                                               "Nation" => %{text: true},
                                               "TaxCode" => %{text: true}
                                             }}
                                        },
                                        "Total" => %{
                                          :text => true,
                                          {:attr, "Code"} => true
                                        }
                                      }
                                    },
                                    "PriceClassRef" => %{text: true},
                                    "SegmentRefs" => %{text: true},
                                    "TicketDesig" => %{text: true}
                                  }},
                               "FareIndicatorCode" => %{text: true},
                               "PassengerRefs" => %{text: true},
                               "Remarks" => %{"Remark" => %{text: true}}
                             }},
                          "NotImplemented" => %{text: true},
                          "Service" =>
                            {:all,
                             %{
                               {:attr, "ServiceID"} => true,
                               "FlightRefs" => %{text: true},
                               "PassengerRefs" => %{text: true},
                               "ServiceDefinitionRef" => %{
                                 :text => true,
                                 {:attr, "SegmentRefs"} => true
                               },
                               "ServiceRef" => %{text: true}
                             }},
                          "TotalPriceDetail" => %{
                            "TotalAmount" => %{
                              "DetailCurrencyPrice" => %{
                                "Total" => %{:text => true, {:attr, "Code"} => true}
                              }
                            }
                          }
                        }},
                     "TimeLimits" => %{
                       "OfferExpiration" => %{{:attr, "DateTime"} => true},
                       "OtherLimits" => %{
                         "OtherLimit" => %{
                           "PriceGuaranteeTimeLimit" => %{
                             "PriceGuarantee" => %{text: true}
                           },
                           "TicketByTimeLimit" => %{"TicketBy" => %{text: true}}
                         }
                       }
                     },
                     "TotalPrice" => %{
                       "DetailCurrencyPrice" => %{
                         "Taxes" => %{
                           "Total" => %{:text => true, {:attr, "Code"} => true}
                         },
                         "Total" => %{:text => true, {:attr, "Code"} => true}
                       }
                     }
                   }}
              }
            },
            "ShoppingResponseID" => %{"ResponseID" => %{text: true}},
            "Warnings" => %{
              "Warning" =>
                {:all,
                 %{
                   :text => true,
                   {:attr, "Code"} => true,
                   {:attr, "Owner"} => true,
                   {:attr, "ShortText"} => true,
                   {:attr, "Type"} => true
                 }}
            }
          }
        }
      }
    }
  }
}

xml = File.read!(Path.expand("./large.xml"))

Benchee.run(
  %{
    "keymember" => fn  ->
      DataSchema.XML.SaxyKeymember.parse_string(xml, schema)
    end,
    "normal" => fn  ->
      DataSchema.XML.Saxy.parse_string(xml, schema)
    end
  },
  parallel: 5,
  memory_time: 5,
  reduction_time: 5
  # inputs: inputs
)
